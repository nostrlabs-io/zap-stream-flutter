import 'package:amberflutter/amberflutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_amber/ndk_amber.dart';
import 'package:ndk_objectbox/ndk_objectbox.dart';
import 'package:ndk_rust_verifier/ndk_rust_verifier.dart';
import 'package:zap_stream_flutter/login.dart';

class NoVerify extends EventVerifier {
  @override
  Future<bool> verify(Nip01Event event) {
    return Future.value(true);
  }
}

final ndkCache = DbObjectBox();
final eventVerifier = kDebugMode ? NoVerify() : RustEventVerifier();
final ndk = Ndk(
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
const nwcRelays = ["wss://relay.getalby.com/v1"];

final loginData = LoginData();
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
final localNotifications = FlutterLocalNotificationsPlugin();

Future<void> initLogin() async {
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
}
