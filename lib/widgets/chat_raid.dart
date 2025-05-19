import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatRaidMessage extends StatefulWidget {
  final StreamEvent stream;
  final Nip01Event event;

  const ChatRaidMessage({super.key, required this.stream, required this.event});

  @override
  State<StatefulWidget> createState() => __ChatRaidMessage();
}

class __ChatRaidMessage extends State<ChatRaidMessage>
    with SingleTickerProviderStateMixin {
  late final String? _from;
  late final String? _to;
  late final bool _isRaiding;

  DateTime? _raidingAt;

  @override
  void initState() {
    super.initState();

    _from =
        widget.event.tags.firstWhereOrNull(
          (t) => t[0] == "a" && (t[3] == "from" || t[3] == "root"),
        )?[1];
    _to =
        widget.event.tags.firstWhereOrNull(
          (t) => t[0] == "a" && (t[3] == "to" || t[3] == "mention"),
        )?[1];
    _isRaiding = _from == widget.stream.aTag;
    final isAutoRaid =
        ((DateTime.now().millisecondsSinceEpoch / 1000) -
                widget.event.createdAt)
            .abs() <
        60;
    if (isAutoRaid && _isRaiding) {
      final autoRaidDelay = Duration(seconds: 5);
      _raidingAt = DateTime.now().add(autoRaidDelay);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_from == null || _to == null) return SizedBox.shrink();

    final otherTag = _isRaiding ? _to : _from;
    final otherLink = otherTag.split(":");
    final otherEvent = ndk.requests.query(filters: [aTagToFilter(otherTag)]);

    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 4),
      width: double.maxFinite,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: DEFAULT_BR, color: PRIMARY_1),
      child: FutureBuilder(
        future: otherEvent.future,
        builder: (ctx, state) {
          final otherStream = state.data?.firstWhereOrNull(
            (e) => e.getDtag() == otherLink[2] && e.pubKey == otherLink[1],
          );
          if (otherStream == null) return SizedBox.shrink();
          final otherStreamEvent = StreamEvent(otherStream);
          return Column(
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: _isRaiding ? "RAIDING " : "RAID FROM "),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: ProfileLoaderWidget(otherStreamEvent.info.host, (
                        ctx,
                        profile,
                      ) {
                        return Text(
                          ProfileNameWidget.nameFromProfile(
                            profile.data ??
                                Metadata(pubKey: otherStreamEvent.info.host),
                          ).toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        );
                      }),
                    ),
                    if (_raidingAt == null)
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: GestureDetector(
                          onTap: () {
                            context.go(
                              "/e/${otherStreamEvent.link}",
                              extra: otherStreamEvent,
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Icon(Icons.open_in_new, size: 15),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if (_raidingAt != null)
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Raiding in "),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: CountdownTimer(
                          triggerAt: _raidingAt!,
                          onTrigger: () {
                            context.go(
                              "/e/${otherStreamEvent.link}",
                              extra: otherStreamEvent,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class CountdownTimer extends StatefulWidget {
  final void Function() onTrigger;
  final TextStyle? style;
  final DateTime triggerAt;

  const CountdownTimer({
    super.key,
    required this.onTrigger,
    this.style,
    required this.triggerAt,
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
        return Text(secondsLeft.toString(), style: widget.style);
      },
    );
  }
}
