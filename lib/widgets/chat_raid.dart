import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/countdown.dart';
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
          (t) =>
              t[0] == "a" && t.length > 3 && (t[3] == "from" || t[3] == "root"),
        )?[1];
    _to =
        widget.event.tags.firstWhereOrNull(
          (t) =>
              t[0] == "a" &&
              t.length > 3 &&
              (t[3] == "to" || t[3] == "mention"),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileLoaderWidget(otherStreamEvent.info.host, (
                    ctx,
                    profile,
                  ) {
                    final otherMeta =
                        profile.data ??
                        Metadata(pubKey: otherStreamEvent.info.host);
                    return Text(
                      _isRaiding
                          ? t.stream.chat.raid.to(
                            name:
                                ProfileNameWidget.nameFromProfile(
                                  otherMeta,
                                ).toUpperCase(),
                          )
                          : t.stream.chat.raid.from(
                            name:
                                ProfileNameWidget.nameFromProfile(
                                  otherMeta,
                                ).toUpperCase(),
                          ),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    );
                  }),
                  GestureDetector(
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
                ],
              ),
              if (_raidingAt != null)
                CountdownTimer(
                  format: (time) => t.stream.chat.raid.countdown(time: time),
                  triggerAt: _raidingAt!,
                  onTrigger: () {
                    context.go(
                      "/e/${otherStreamEvent.link}",
                      extra: otherStreamEvent,
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}
