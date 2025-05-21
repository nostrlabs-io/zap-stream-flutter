import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button_follow.dart';
import 'package:zap_stream_flutter/widgets/mute_button.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/reaction.dart';
import 'package:zap_stream_flutter/widgets/zap.dart';

class ChatModalWidget extends StatefulWidget {
  final Metadata profile;
  final Nip01Event event;
  final StreamEvent stream;

  const ChatModalWidget({
    super.key,
    required this.profile,
    required this.event,
    required this.stream,
  });

  @override
  State<StatefulWidget> createState() => _ChatModalWidget();
}

class _ChatModalWidget extends State<ChatModalWidget> {
  bool _showEmojiPicker = false;
  bool _showTimeoutOptions = false;

  @override
  Widget build(BuildContext context) {
    final isModerator =
        widget.stream.info.host == ndk.accounts.getPublicKey();

    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          ProfileWidget(profile: widget.profile),
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(color: LAYER_2, borderRadius: DEFAULT_BR),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: NoteText(event: widget.event, showEmbeds: false),
          ),
          Row(
            spacing: 8,
            children: [
              IconButton.filled(
                color: LAYER_5,
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith((_) => LAYER_3),
                ),
                onPressed:
                    () => setState(() {
                      _showTimeoutOptions = false;
                      _showEmojiPicker = !_showEmojiPicker;
                    }),
                icon: Icon(Icons.mood),
              ),
              if (widget.profile.lud16?.isNotEmpty ?? false)
                IconButton.filled(
                  color: ZAP_1,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateColor.resolveWith(
                      (_) => LAYER_3,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      context: context,
                      builder: (ctx) {
                        return ZapWidget(
                          pubkey: widget.event.pubKey,
                          target: widget.event,
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.bolt),
                ),
              if (isModerator)
                IconButton(
                  color: WARNING,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateColor.resolveWith(
                      (_) => LAYER_3,
                    ),
                  ),
                  onPressed:
                      () => setState(() {
                        _showEmojiPicker = false;
                        _showTimeoutOptions = !_showTimeoutOptions;
                      }),
                  icon: Icon(Icons.timer_outlined),
                ),
            ],
          ),
          if (_showEmojiPicker) ReactionWidget(event: widget.event),

          if (_showTimeoutOptions)
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 5,
              childAspectRatio: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children:
                  [
                        10,
                        30,
                        60,
                        300,
                        60 * 10,
                        60 * 30,
                        60 * 60,
                        60 * 60 * 6,
                        60 * 60 * 12,
                        60 * 60 * 24,
                        60 * 60 * 24 * 2,
                        60 * 60 * 24 * 7,
                        60 * 60 * 24 * 7 * 2,
                        60 * 60 * 24 * 7 * 3,
                        60 * 60 * 24 * 7 * 4,
                      ]
                      .map(
                        (v) => PillWidget(
                          color: LAYER_2,
                          onTap: () {
                            final now =
                                (DateTime.now().millisecondsSinceEpoch / 1000)
                                    .ceil();
                            final timeout = Nip01Event(
                              pubKey: ndk.accounts.getPublicKey()!,
                              kind: 1314,
                              createdAt: now,
                              tags: [
                                ["p", widget.event.pubKey],
                                ["expiration", (now + v).toString()],
                              ],
                              content: "",
                            );
                            ndk.broadcast.broadcast(nostrEvent: timeout);
                            Navigator.pop(context);
                          },
                          child: Text(
                            Duration(seconds: v).pretty(abbreviated: true),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                      .toList(),
            ),
          FollowButton(
            pubkey: widget.event.pubKey,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MuteButton(
            pubkey: widget.event.pubKey,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
