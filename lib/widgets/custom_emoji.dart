import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:zap_stream_flutter/imgproxy.dart';

class CustomEmoji extends StatelessWidget {
  final List<List<String>> tags;
  final String emoji;
  final double? size;

  const CustomEmoji({
    super.key,
    required this.tags,
    required this.emoji,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    final cleanedEmojiName =
        emoji.startsWith(":") && emoji.endsWith(":")
            ? emoji.substring(1, emoji.length - 1)
            : emoji;

    final customEmoji =
        tags.firstWhereOrNull(
          (t) => t[0] == "emoji" && t[1] == cleanedEmojiName,
        )?[2];
    if (customEmoji != null) {
      return CachedNetworkImage(
        imageUrl: proxyImg(context, customEmoji),
        height: size ?? 16,
        width: size ?? 16,
      );
    } else {
      return Text(emoji);
    }
  }
}
