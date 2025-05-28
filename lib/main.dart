import 'dart:developer' as developer;

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:zap_stream_flutter/app.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/notifications.dart';
import 'package:zap_stream_flutter/player.dart';

late final MainPlayer mainPlayer;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleSettings.useDeviceLocale();
  //await LocaleSettings.setLocaleRaw("zh");
  await dotenv.load(fileName: kDebugMode ? ".env.development" : ".env");

  await initLogin();

  setupNotifications().catchError((e) {
    developer.log("Failed to setup notifications: $e");
  });

  mainPlayer = await AudioService.init(
    builder: () => MainPlayer(),
    config: AudioServiceConfig(
      androidNotificationChannelId: "io.nostrlabs.zap_stream_flutter.player",
      androidNotificationChannelName: "player",
      androidNotificationOngoing: true
    ),
  );

  runZapStream();
}
