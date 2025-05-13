import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/mute_button.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/reaction.dart';
import 'package:zap_stream_flutter/widgets/zap.dart';

class ChatModalWidget extends StatefulWidget {
  final Metadata profile;
  final Nip01Event event;

  const ChatModalWidget({
    super.key,
    required this.profile,
    required this.event,
  });

  @override
  State<StatefulWidget> createState() => _ChatModalWidget();
}

class _ChatModalWidget extends State<ChatModalWidget> {
  bool _showEmojiPicker = false;

  @override
  Widget build(BuildContext context) {
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
            child: NoteText(event: widget.event),
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
                      _showEmojiPicker = !_showEmojiPicker;
                    }),
                icon: Icon(Icons.mood),
              ),
              IconButton.filled(
                color: ZAP_1,
                style: ButtonStyle(
                  backgroundColor: WidgetStateColor.resolveWith((_) => LAYER_3),
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
            ],
          ),
          if (_showEmojiPicker) ReactionWidget(event: widget.event),
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
