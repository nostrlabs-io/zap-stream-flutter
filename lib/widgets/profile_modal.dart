import 'dart:developer' as developer;

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/mute_button.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/zap.dart';

class ProfileModalWidget extends StatelessWidget {
  final Metadata profile;
  final Nip01Event event;

  const ProfileModalWidget({
    super.key,
    required this.profile,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
      child: Column(
        spacing: 10,
        children: [
          ProfileWidget(profile: profile),
          EmojiPicker(
            onEmojiSelected: (category, emoji) {
              developer.log(emoji.emoji);
              ndk.broadcast.broadcastReaction(
                eventId: event.id,
                reaction: emoji.emoji,
              );
              Navigator.pop(context);
            },
            config: Config(
              height: 256,
              checkPlatformCompatibility: true,
              emojiViewConfig: EmojiViewConfig(
                emojiSizeMax:
                    28 *
                    (foundation.defaultTargetPlatform == TargetPlatform.iOS
                        ? 1.20
                        : 1.0),
                backgroundColor: LAYER_1,
              ),
              viewOrderConfig: const ViewOrderConfig(
                top: EmojiPickerItem.categoryBar,
                middle: EmojiPickerItem.emojiView,
                bottom: EmojiPickerItem.searchBar,
              ),
              bottomActionBarConfig: BottomActionBarConfig(
                backgroundColor: LAYER_2,
                buttonColor: PRIMARY_1,
              ),
              categoryViewConfig: CategoryViewConfig(backgroundColor: LAYER_2),
              searchViewConfig: SearchViewConfig(
                backgroundColor: LAYER_2,
                buttonIconColor: PRIMARY_1,
              ),
            ),
          ),
          BasicButton.text(
            "Zap",
            onTap: () {
              showModalBottomSheet(
                context: context,
                constraints: BoxConstraints.expand(),
                builder: (ctx) {
                  return ZapWidget(pubkey: event.pubKey, target: event);
                },
              );
            },
          ),
          MuteButton(pubkey: event.pubKey),
        ],
      ),
    );
  }
}
