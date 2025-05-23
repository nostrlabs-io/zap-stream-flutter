import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ndk/ndk.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:http/http.dart' as http;
import 'package:zap_stream_flutter/utils.dart';

class Notepush {
  final String base;
  final EventSigner signer;

  Notepush(this.base, {required this.signer});

  Future<String> register(String token) async {
    final pubkey = signer.getPublicKey();
    final url =
        "$base/user-info/$pubkey/${Uri.encodeComponent(token)}?backend=fcm";
    final rsp = await _sendPutRequest(url);
    return rsp.body;
  }

  Future<List<String>> getWatchedKeys() async {
    final pubkey = signer.getPublicKey();
    final url = "$base/user-info/$pubkey/notify";
    final rsp = await _sendGetRequest(url);
    final List<dynamic> obj = JsonCodec().decode(rsp.body);
    return List<String>.from(obj);
  }

  Future<void> watchPubkey(String target, List<int> kinds) async {
    final pubkey = signer.getPublicKey();
    final url = "$base/user-info/$pubkey/notify/$target";
    await _sendPutRequest(url, body: {"kinds": kinds});
  }

  Future<void> removeWatchPubkey(String target) async {
    final pubkey = signer.getPublicKey();
    final url = "$base/user-info/$pubkey/notify/$target";
    await _sendDeleteRequest(url);
  }

  Future<void> setNotificationSettings(String token, List<int> kinds) async {
    final pubkey = signer.getPublicKey();
    final url =
        "$base/user-info/$pubkey/${Uri.encodeComponent(token)}/preference";
    await _sendPutRequest(url, body: {"kinds": kinds});
  }

  Future<http.Response> _sendPutRequest(String url, {Object? body}) async {
    final jsonBody = body != null ? JsonCodec().encode(body) : null;
    final auth = await _makeAuth("PUT", url, body: jsonBody);
    final rsp = await http
        .put(
          Uri.parse(url),
          body: jsonBody,
          headers: {
            "authorization": "Nostr $auth",
            "accept": "application/json",
            "content-type": "application/json",
          },
        )
        .timeout(Duration(seconds: 10));
    developer.log(rsp.body);
    return rsp;
  }

  Future<http.Response> _sendGetRequest(String url, {Object? body}) async {
    final jsonBody = body != null ? JsonCodec().encode(body) : null;
    final auth = await _makeAuth("GET", url, body: jsonBody);
    final rsp = await http
        .get(
          Uri.parse(url),
          headers: {
            "authorization": "Nostr $auth",
            "accept": "application/json",
            "content-type": "application/json",
          },
        )
        .timeout(Duration(seconds: 10));
    developer.log(rsp.body);
    return rsp;
  }

  Future<http.Response> _sendDeleteRequest(String url, {Object? body}) async {
    final jsonBody = body != null ? JsonCodec().encode(body) : null;
    final auth = await _makeAuth("DELETE", url, body: jsonBody);
    final rsp = await http
        .delete(
          Uri.parse(url),
          headers: {
            "authorization": "Nostr $auth",
            "accept": "application/json",
            "content-type": "application/json",
          },
        )
        .timeout(Duration(seconds: 10));
    developer.log(rsp.body);
    return rsp;
  }

  Future<String> _makeAuth(String method, String url, {String? body}) async {
    final pubkey = signer.getPublicKey();
    var tags = [
      ["u", url],
      ["method", method],
    ];
    if (body != null) {
      final hash = hex.encode(sha256.convert(utf8.encode(body)).bytes);
      tags.add(["payload", hash]);
    }
    final authEvent = Nip01Event(
      pubKey: pubkey,
      kind: 27235,
      tags: tags,
      content: "",
    );
    await signer.sign(authEvent);
    return authEvent.toBase64();
  }
}

Notepush? getNotificationService() {
  final signer = ndk.accounts.getLoggedAccount()?.signer;
  return signer != null
      ? Notepush(dotenv.env["NOTEPUSH_URL"]!, signer: signer)
      : null;
}

Future<void> setupNotifications() async {
  await Firebase.initializeApp();

  final signer = ndk.accounts.getLoggedAccount()?.signer;
  if (signer != null) {
    final pusher = Notepush(dotenv.env["NOTEPUSH_URL"]!, signer: signer);
    final fbase = FirebaseMessaging.instance;
    FirebaseMessaging.onMessage.listen((msg) {
      developer.log(msg.notification?.body ?? "");
      final notification = msg.notification;
      if (notification != null && notification.android != null) {
        FlutterLocalNotificationsPlugin().show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              notification.android!.channelId ?? "fcm",
              "fcm",
            ),
          ),
        );
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((msg) {
      try {
        final notification = msg.notification;
        final String? json = msg.data["nostr_event"];
        if (notification != null && json != null) {
          // Just launch the URL because we support deep links
          final event = Nip01Event.fromJson(JsonCodec().decode(json));
          final stream = StreamEvent(event);
          launchUrl(Uri.parse("https://zap.stream/${stream.link}"));
        }
      } catch (e) {
        developer.log("Failed to process push notification\n ${e.toString()}");
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
      await pusher.setNotificationSettings(token, [30_311]);
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
    await pusher.setNotificationSettings(fcmToken, [30_311]);
  }
}
