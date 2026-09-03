import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_flutter/ndk_flutter.dart';
import 'package:ndk_objectbox/ndk_objectbox.dart';
import 'dart:developer' as developer;

import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/notifications.dart';

class NoVerify extends EventVerifier {
  @override
  Future<bool> verify(Nip01Event event) {
    return Future.value(true);
  }
}

final ndkCache = DbObjectBox();
final eventVerifier = kDebugMode ? NoVerify() : NdkEventVerifier();
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
final apiUrl = dotenv.env["API_URL"] ?? "https://api-core.zap.stream/api/v1";

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
              signer: Nip55EventSigner(
                publicKey: pubkey,
                nip55Signer: Nip55Signer(
                  package: loginData.value!.signerPackage,
                ),
              ),
            );
          case AccountType.publicKey:
            ndk.accounts.loginPublicKey(pubkey: pubkey);
        }
      }
      ndk.metadata.loadMetadata(pubkey);
      ndk.follows.getContactList(pubkey);
      // push registration needs a signer; logging in after launch used to
      // leave the notification bell missing until the app was restarted
      final signer = ndk.accounts.getLoggedAccount()?.signer;
      if (signer != null && ndk.accounts.canSign) {
        configureNotifications(signer).catchError((e) {
          developer.log("Failed to configure notifications: $e");
        });
      }
    } else {
      ndk.accounts.logout();
      resetNotifications();
    }
  });

  await loginData.load();
}
