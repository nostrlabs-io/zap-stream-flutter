import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:io';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_objectbox/ndk_objectbox.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:http/http.dart' as http;
import 'package:zap_stream_flutter/firebase_options.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

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

class NotificationsState {
  final AuthorizationStatus status;
  final List<String> notifyKeys;

  NotificationsState({required this.status, required this.notifyKeys});

  NotificationsState copyWith({
    AuthorizationStatus? newStatus,
    List<String>? newNotifyKeys,
  }) {
    return NotificationsState(
      status: newStatus ?? status,
      notifyKeys: newNotifyKeys ?? notifyKeys,
    );
  }

  static Future<NotificationsState> init(AuthorizationStatus status) async {
    if (status == AuthorizationStatus.authorized) {
      final svc = getNotificationService();
      if (svc != null) {
        try {
          final keys = await svc.getWatchedKeys();
          return NotificationsState(status: status, notifyKeys: keys);
        } catch (e) {
          developer.log("Failed to init NotificationsState: $e");
        }
      }
    }
    return NotificationsState(status: status, notifyKeys: []);
  }
}

class NotificationsStore extends ValueNotifier<NotificationsState?> {
  NotificationsStore(super.value);

  Future<void> reload() async {
    if (value != null && value!.status == AuthorizationStatus.authorized) {
      final svc = getNotificationService();
      if (svc != null) {
        final keys = await svc.getWatchedKeys();
        value = value!.copyWith(newNotifyKeys: keys);
      }
    }
  }
}

Future<void> _initLocalNotifications() async {
  await localNotifications.initialize(
    InitializationSettings(
      android: AndroidInitializationSettings("@drawable/ic_stat_name"),
      iOS: DarwinInitializationSettings(),
    ),
  );
}

@pragma('vm:entry-point')
Future<void> _onBackgroundNotification(RemoteMessage msg) async {
  await LocaleSettings.useDeviceLocale();
  final cache = DbObjectBox(attach: true);
  await _initLocalNotifications();
  await _handleNotification(msg, cache);
}

Future<void> _onNotification(RemoteMessage msg) async {
  await _handleNotification(msg, ndkCache);
}

Future<void> _handleNotification(RemoteMessage msg, DbObjectBox cache) async {
  final notification = msg.notification;
  if (notification != null && notification.android != null) {
    final String? json = msg.data["nostr_event"];

    final event =
        json != null ? Nip01Event.fromJson(JsonCodec().decode(json)) : null;
    await _showNotification(notification, ndkCache, event);
  }
}

Future<void> _showNotification(
  RemoteNotification notification,
  DbObjectBox cache,
  Nip01Event? event,
) async {
  final stream = event != null ? StreamEvent(event) : null;
  final hostProfile =
      stream != null ? await cache.loadMetadata(stream.info.host) : null;
  final newTitle =
      hostProfile != null
          ? t.stream.notification(
            name: ProfileNameWidget.nameFromProfile(hostProfile),
          )
          : null;

  localNotifications.show(
    notification.hashCode,
    newTitle ?? notification.title,
    stream?.info.title ?? notification.body,
    NotificationDetails(
      android: AndroidNotificationDetails(
        notification.android!.channelId ?? "fcm",
        "Push Notifications",
        category: AndroidNotificationCategory.social
      ),
    ),
  );
}

Future<void> _onOpenMessage(RemoteMessage msg) async {
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
}

// global notifications store
final notifications = NotificationsStore(null);

Future<void> setupNotifications() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final signer = ndk.accounts.getLoggedAccount()?.signer;
  if (signer != null) {
    FirebaseMessaging.onMessage.listen(_onNotification);
    //FirebaseMessaging.onBackgroundMessage(_onBackgroundNotification);
    FirebaseMessaging.onMessageOpenedApp.listen(_onOpenMessage);

    final settings = await FirebaseMessaging.instance.requestPermission(
      provisional: true,
    );
    await FirebaseMessaging.instance.setAutoInitEnabled(true);
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          alert: true,
          badge: true,
          sound: true,
        );

    if (Platform.isIOS) {
      final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
      if (apnsToken == null) {
        throw "APNS token not availble";
      }
    }
    await _initLocalNotifications();

    final pusher = Notepush(dotenv.env["NOTEPUSH_URL"]!, signer: signer);
    FirebaseMessaging.instance.onTokenRefresh.listen((token) async {
      developer.log("NEW TOKEN: $token");
      await pusher.register(token);
      await pusher.setNotificationSettings(token, [30_311]);
    });

    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken == null) {
      throw "Push token is null";
    }
    await pusher.register(fcmToken);
    await pusher.setNotificationSettings(fcmToken, [30_311]);

    notifications.value = await NotificationsState.init(
      settings.authorizationStatus,
    );
  }
}
