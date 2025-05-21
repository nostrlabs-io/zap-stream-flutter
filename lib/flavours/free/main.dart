import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/app.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  // FCM DELETE
  await initLogin();

  runZapStream();
}
