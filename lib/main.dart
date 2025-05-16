import 'package:amberflutter/amberflutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_amber/ndk_amber.dart';
import 'package:ndk_objectbox/ndk_objectbox.dart';
import 'package:ndk_rust_verifier/ndk_rust_verifier.dart';
import 'package:zap_stream_flutter/pages/category.dart';
import 'package:zap_stream_flutter/pages/hashtag.dart';
import 'package:zap_stream_flutter/pages/login.dart';
import 'package:zap_stream_flutter/pages/login_input.dart';
import 'package:zap_stream_flutter/pages/new_account.dart';
import 'package:zap_stream_flutter/pages/profile.dart';
import 'package:zap_stream_flutter/pages/settings_profile.dart';
import 'package:zap_stream_flutter/pages/stream.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/header.dart';

import 'login.dart';
import 'pages/home.dart';

class NoVerify extends EventVerifier {
  @override
  Future<bool> verify(Nip01Event event) {
    return Future.value(true);
  }
}

final ndkCache = DbObjectBox();
final eventVerifier = kDebugMode ? NoVerify() : RustEventVerifier();
var ndk = Ndk(
  NdkConfig(
    eventVerifier: eventVerifier,
    cache: ndkCache,
    bootstrapRelays: defaultRelays,
    //engine: NdkEngine.JIT,
  ),
);

const userAgent = "zap.stream/1.0";
const defaultRelays = [
  "wss://nos.lol",
  "wss://relay.damus.io",
  "wss://relay.primal.net",
  "wss://relay.snort.social",
  "wss://relay.fountain.fm",
];
const searchRelays = ["wss://relay.nostr.band", "wss://search.nos.today"];

final loginData = LoginData();
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // reload / cache login data
  loginData.addListener(() {
    if (loginData.value != null) {
      final pubkey = loginData.value!.pubkey;
      if (!ndk.accounts.hasAccount(pubkey)) {
        switch (loginData.value!.type) {
          case AccountType.privateKey:
            ndk.accounts.loginPrivateKey(
              pubkey: pubkey,
              privkey: loginData.value!.privateKey!,
            );
          case AccountType.externalSigner:
            ndk.accounts.loginExternalSigner(
              signer: AmberEventSigner(
                publicKey: pubkey,
                amberFlutterDS: AmberFlutterDS(Amberflutter()),
              ),
            );
          case AccountType.publicKey:
            ndk.accounts.loginPublicKey(pubkey: pubkey);
        }
      }
      ndk.metadata.loadMetadata(pubkey);
      ndk.follows.getContactList(pubkey);
    } else {
      ndk.accounts.logout();
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
          ShellRoute(
            observers: [routeObserver],
            builder:
                (context, state, child) => SafeArea(
                  child: Scaffold(body: child, backgroundColor: Colors.black),
                ),
            routes: [
              GoRoute(path: "/", builder: (ctx, state) => HomePage()),
              ShellRoute(
                observers: [routeObserver],
                builder: (context, state, child) {
                  return Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 20,
                      children: [
                        Center(
                          child: Image.asset("assets/logo.png", height: 150),
                        ),
                        child,
                      ],
                    ),
                  );
                },
                routes: [
                  GoRoute(
                    path: "/login",
                    builder: (ctx, state) => LoginPage(),
                    routes: [
                      GoRoute(
                        path: "key",
                        builder: (ctx, state) => LoginInputPage(),
                      ),
                      GoRoute(
                        path: "new",
                        builder: (context, state) => NewAccountPage(),
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: StreamPage.path,
                builder: (ctx, state) {
                  if (state.extra is StreamEvent) {
                    return StreamPage(stream: state.extra as StreamEvent);
                  } else {
                    throw UnimplementedError();
                  }
                },
              ),
              GoRoute(
                path: "/p/:id",
                builder: (ctx, state) {
                  return ProfilePage(pubkey: state.pathParameters["id"]!);
                },
              ),
              GoRoute(
                path: "/t/:id",
                builder: (context, state) {
                  return HashtagPage(tag: state.pathParameters["id"]!);
                },
              ),
              GoRoute(
                path: "/category/:id",
                builder: (context, state) {
                  return CategoryPage(
                    category: state.pathParameters["id"]!,
                    info: state.extra as GameInfo?,
                  );
                },
              ),
              ShellRoute(
                observers: [routeObserver],
                builder:
                    (context, state, child) =>
                        Column(children: [HeaderWidget(), child]),
                routes: [
                  GoRoute(
                    path: "/settings",
                    builder: (context, state) => SizedBox(),
                    routes: [
                      GoRoute(
                        path: "profile",
                        builder: (context, state) => SettingsProfilePage(),
                      ),
                    ],
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
