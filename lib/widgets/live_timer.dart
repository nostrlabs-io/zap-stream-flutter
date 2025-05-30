import 'dart:async';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';

class LiveTimerWidget extends StatefulWidget {
  final DateTime started;

  const LiveTimerWidget({super.key, required this.started});

  @override
  createState() => _LiveTimerWidget();
}

class _LiveTimerWidget extends State<LiveTimerWidget> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        // tick
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PillWidget(
      color: LAYER_2,
      child: Text(
        Duration(
          seconds:
              ((DateTime.now().millisecondsSinceEpoch -
                          widget.started.millisecondsSinceEpoch) /
                      1000)
                  .toInt(),
        ).pretty(abbreviated: true),
      ),
    );
  }
}
