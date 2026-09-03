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
import 'package:zap_stream_flutter/relay_health.dart';

late final MainPlayer mainPlayer;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await LocaleSettings.setLocaleRaw("zh");
  // none of these depend on each other, and each one is a platform channel
  // round trip; running them in sequence held the first frame back
  final results = await Future.wait([
    LocaleSettings.useDeviceLocale(),
    dotenv.load(fileName: kDebugMode ? ".env.development" : ".env"),
    initLogin(),
    AudioService.init(
      builder: () => MainPlayer(),
      config: AudioServiceConfig(
        androidNotificationChannelId: "io.nostrlabs.zap_stream_flutter.player",
        androidNotificationChannelName: "Player Status",
        androidNotificationOngoing: true,
      ),
    ),
  ]);
  mainPlayer = results[3] as MainPlayer;

  watchRelayHealth();

  setupNotifications().catchError((e) {
    developer.log("Failed to setup notifications: $e");
  });

  runZapStream();
}
