import 'dart:developer' as developer;
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:http/http.dart' as http;

class Notepush {
  final String base;
  final EventSigner signer;

  Notepush(this.base, {required this.signer});

  Future<String> register(String token) async {
    final pubkey = signer.getPublicKey();
    final url =
        "$base/user-info/$pubkey/${Uri.encodeComponent(token)}?backend=fcm";
    developer.log(url);
    final auth = await _makeAuth("PUT", url);
    final rsp = await http.put(
      Uri.parse(url),
      headers: {
        "authorization": "Nostr $auth",
        "accept": "application/json",
        "content-type": "application/json",
      },
    );
    developer.log(rsp.body);
    return rsp.body;
  }

  Future<String> _makeAuth(String method, String url) async {
    final pubkey = signer.getPublicKey();
    final authEvent = Nip01Event(
      pubKey: pubkey,
      kind: 27235,
      tags: [
        ["u", url],
        ["method", "PUT"],
      ],
      content: "",
    );
    await signer.sign(authEvent);
    return authEvent.toBase64();
  }
}

Future<void> setupNotifications() async {
  final signer = ndk.accounts.getLoggedAccount()?.signer;
  if (signer != null) {
    final pusher = Notepush("http://10.0.2.2:8000", signer: signer);
    final fbase = FirebaseMessaging.instance;
    FirebaseMessaging.onMessage.listen((msg) {
      developer.log(msg.notification?.body ?? "");
      final notification = msg.notification;
      if (notification != null && notification.android != null) {
        /*FlutterLocalNotificationsPlugin().show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              notification.android!.channelId ?? "fcm",
              "fcm",
            ),
          ),
        );*/
        // TODO: foreground notification
      }
    });
    await fbase.setAutoInitEnabled(true);
    await fbase.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    await fbase.requestPermission(provisional: true);

    await localNotifications.initialize(
      InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      ),
    );
    fbase.onTokenRefresh.listen((token) async {
      developer.log("NEW TOKEN: $token");
      await pusher.register(token);
    });

    if (Platform.isIOS) {
      final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
      if (apnsToken == null) {
        throw "APNS token not availble";
      }
    }
    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null) {
      throw "Push token is null";
    }
    await pusher.register(fcmToken);
  }
}
