import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:zap_stream_flutter/const.dart';

/// Keeps relay connections alive across the app's lifecycle.
///
/// ndk connects to the bootstrap relays once at startup and gives up on any
/// that fail. Launching under doze, losing signal, or a long stint in the
/// background then leaves the app with no data until it is killed and
/// restarted. Reconnect on resume, and poll while anything is down.
void watchRelayHealth() {
  var resumed = true;
  AppLifecycleListener(
    onStateChange: (state) {
      resumed = state == AppLifecycleState.resumed;
    },
    onResume: () {
      ndk.connectivity.tryReconnect();
    },
  );
  Timer.periodic(const Duration(seconds: 30), (_) {
    // no point hammering relays from the background
    if (resumed) ndk.connectivity.tryReconnect();
  });
}
