import 'dart:developer' as developer;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/app.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/notifications.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  await Firebase.initializeApp();
  await initLogin();

  setupNotifications().catchError((e) {
    developer.log("Failed to setup notifications: $e");
  });

  runZapStream();
}
