import 'package:duration/duration.dart';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final void Function() onTrigger;
  final TextStyle? style;
  final DateTime triggerAt;
  final String Function(String time)? format;

  const CountdownTimer({
    super.key,
    required this.onTrigger,
    this.style,
    required this.triggerAt,
    this.format,
  });

  @override
  createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _actionTriggered = false;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    final countdown =
        widget.triggerAt.isBefore(now)
            ? Duration()
            : widget.triggerAt.difference(now);

    _controller = AnimationController(vsync: this, duration: countdown);

    // Create animation to track progress from 5 to 0
    _animation = Tween<double>(
      begin: countdown.inSeconds.toDouble(),
      end: 0,
    ).animate(_controller)..addStatusListener((status) {
      if (status == AnimationStatus.completed && !_actionTriggered) {
        setState(() {
          _actionTriggered = true;
          widget.onTrigger();
        });
      }
    });

    // Start the countdown immediately when widget is mounted
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        final secondsLeft = _animation.value.ceil();
        final v = Duration(seconds: secondsLeft).pretty(abbreviated: true);
        return Text(
          widget.format != null ? widget.format!(v) : v,
          style: widget.style,
        );
      },
    );
  }
}
