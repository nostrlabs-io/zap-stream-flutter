import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/entities.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/widgets/emoji.dart';

class ReactionWidget extends StatelessWidget {
  final Nip01Event event;
  final List<String>? customEmojiSets;

  const ReactionWidget({super.key, required this.event, this.customEmojiSets});

  @override
  Widget build(BuildContext context) {
    return EmojiPickerCustom(
      onEmojiSelected: (e) {
        final signer = ndk.accounts.getLoggedAccount()?.signer;
        if (signer == null) return;
        final ev = Nip01Event(
          pubKey: signer.getPublicKey(),
          kind: 7,
          tags: [
            ["e", event.id],
            ["p", event.pubKey],
            if (e.emoji.startsWith("http")) ["emoji", e.name, e.emoji],
          ],
          content: e.emoji.startsWith("http") ? ":${e.name}:" : e.emoji,
        );
        ndk.broadcast.broadcast(nostrEvent: ev);
        context.pop();
      },
      customEmojiSets: customEmojiSets,
    );
  }
}
