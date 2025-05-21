import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/widgets.dart';
import 'package:ndk/entities.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';

final emojiPickerConfig = Config(
  height: 256,
  checkPlatformCompatibility: true,
  emojiViewConfig: EmojiViewConfig(
    emojiSizeMax:
        28 *
        (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.20 : 1.0),
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
    showBackspaceButton: false,
  ),
  categoryViewConfig: CategoryViewConfig(backgroundColor: LAYER_2),
  searchViewConfig: SearchViewConfig(
    backgroundColor: LAYER_2,
    buttonIconColor: PRIMARY_1,
  ),
);

class ReactionWidget extends StatelessWidget {
  final Nip01Event event;

  const ReactionWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return EmojiPicker(
      onEmojiSelected: (category, emoji) {
        ndk.broadcast.broadcastReaction(
          eventId: event.id,
          reaction: emoji.emoji,
        );
        Navigator.pop(context);
      },
      config: emojiPickerConfig,
    );
  }
}
