import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/entities.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/widgets/emoji.dart';

class ReactionWidget extends StatelessWidget {
  final Nip01Event event;

  const ReactionWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return EmojiPickerCustom(
      onEmojiSelected: (e) {
        ndk.broadcast.broadcastReaction(eventId: event.id, reaction: e.emoji);
        context.pop();
      },
    );
  }
}
