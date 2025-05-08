import 'package:amberflutter/amberflutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_amber/ndk_amber.dart';
import 'package:ndk_objectbox/ndk_objectbox.dart';
import 'package:ndk_rust_verifier/ndk_rust_verifier.dart';
import 'package:zap_stream_flutter/pages/login.dart';
import 'package:zap_stream_flutter/pages/stream.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';

import 'login.dart';
import 'pages/home.dart';
import 'pages/layout.dart';

class NoVerify extends EventVerifier {
  @override
  Future<bool> verify(Nip01Event event) {
    return Future.value(true);
  }
}

final ndkCache = DbObjectBox();
final eventVerifier = kDebugMode ? NoVerify() : RustEventVerifier();
var ndk = Ndk(NdkConfig(eventVerifier: eventVerifier, cache: ndkCache));

const userAgent = "zap.stream/1.0";
const defaultRelays = [
  "wss://nos.lol",
  "wss://relay.damus.io",
  "wss://relay.primal.net",
];
const searchRelays = ["wss://relay.nostr.band", "wss://search.nos.today"];

final loginData = LoginData();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // reload / cache login data
  loginData.addListener(() {
    if (loginData.value != null) {
      if (!ndk.accounts.hasAccount(loginData.value!.pubkey)) {
        switch (loginData.value!.type) {
          case AccountType.privateKey:
            ndk.accounts.loginPrivateKey(
              pubkey: loginData.value!.pubkey,
              privkey: loginData.value!.privateKey!,
            );
          case AccountType.externalSigner:
            ndk.accounts.loginExternalSigner(
              signer: AmberEventSigner(
                publicKey: loginData.value!.pubkey,
                amberFlutterDS: AmberFlutterDS(Amberflutter()),
              ),
            );
          case AccountType.publicKey:
            ndk.accounts.loginPublicKey(pubkey: loginData.value!.pubkey);
        }
      }
      ndk.metadata.loadMetadata(loginData.value!.pubkey);
      ndk.follows.getContactList(loginData.value!.pubkey);
    }
  });

  await loginData.load();

  runApp(
    MaterialApp.router(
      theme: ThemeData.localize(
        ThemeData(colorScheme: ColorScheme.dark(), highlightColor: PRIMARY_1),
        TextTheme(),
      ),
      routerConfig: GoRouter(
        routes: [
          StatefulShellRoute.indexedStack(
            builder:
                (context, state, navigationShell) =>
                    SafeArea(child: LayoutScreen(navigationShell)),
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(path: "/", builder: (ctx, state) => HomePage()),
                  GoRoute(path: "/login", builder: (ctx, state) => LoginPage()),
                  GoRoute(
                    path: "/e/:id",
                    builder: (ctx, state) {
                      if (state.extra is StreamEvent) {
                        return StreamPage(stream: state.extra as StreamEvent);
                      } else {
                        throw UnimplementedError();
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
