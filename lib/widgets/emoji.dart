import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart' as emoji;
import 'package:emoji_picker_flutter/locales/default_emoji_set_locale.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';

class EmojiPickerCustom extends StatelessWidget {
  final List<String>? customEmojiSets;
  final void Function(emoji.Emoji)? onEmojiSelected;

  const EmojiPickerCustom({
    super.key,
    this.onEmojiSelected,
    this.customEmojiSets,
  });

  Widget _picker(List<CustomEmojiSet> customEmojiTags) {
    return emoji.EmojiPicker(
      config: emoji.Config(
        emojiSet: (locale) {
          var ret = List<emoji.CategoryEmoji>.from(
            getDefaultEmojiLocale(locale),
          );

          // append custom emoji
          final custom = emoji.Category(name: "Custom", icon: Icons.star);
          ret.add(
            emoji.CategoryEmoji(
              custom,
              customEmojiTags
                  .map((a) => a.emoji)
                  .flattened
                  .map(
                    (e) => emoji.Emoji(
                      e.url,
                      e.name,
                      widget: CachedNetworkImage(
                        imageUrl: e.url,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  )
                  .toList(),
            ),
          );

          return ret;
        },
        height: 256,
        checkPlatformCompatibility: false,
        emojiViewConfig: emoji.EmojiViewConfig(
          emojiSizeMax:
              28 *
              (foundation.defaultTargetPlatform == TargetPlatform.iOS
                  ? 1.20
                  : 1.0),
          backgroundColor: LAYER_1,
        ),
        viewOrderConfig: const emoji.ViewOrderConfig(
          top: emoji.EmojiPickerItem.categoryBar,
          middle: emoji.EmojiPickerItem.emojiView,
          bottom: emoji.EmojiPickerItem.searchBar,
        ),
        bottomActionBarConfig: emoji.BottomActionBarConfig(
          backgroundColor: LAYER_2,
          buttonColor: PRIMARY_1,
          showBackspaceButton: false,
        ),
        categoryViewConfig: emoji.CategoryViewConfig(
          backgroundColor: LAYER_2,
          recentTabBehavior: emoji.RecentTabBehavior.NONE,
        ),
        searchViewConfig: emoji.SearchViewConfig(
          backgroundColor: LAYER_2,
          buttonIconColor: PRIMARY_1,
        ),
      ),
      onEmojiSelected: (_, e) {
        if (onEmojiSelected != null) {
          onEmojiSelected!(e);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var emojiPubkeys = customEmojiSets ?? [];
    final signer = ndk.accounts.getLoggedAccount()?.signer;
    if (signer == null) {
      return SizedBox.fromSize();
    }
    emojiPubkeys.add(signer.getPublicKey());

    return FutureBuilder(
      future:
          ndk.requests
              .query(
                filters: [
                  Filter(kinds: [Nip51List.kEmojis], authors: emojiPubkeys),
                ],
              )
              .future,
      builder: (context, state) {
        final sets =
            state.data
                ?.map((a) => a.tags.where((b) => b[0] == "a"))
                .flattened
                .map((e) => e[1])
                .toSet();
        if (sets == null || sets.isEmpty) {
          return _picker([]);
        }
        return RxFilter<Nip01Event>(
          Key("emoji-picker"),
          filters: sets.map(aTagToFilter).toList(),
          builder: (context, state) {
            return _picker(
              (state ?? []).map((e) => CustomEmojiSet(event: e)).toList(),
            );
          },
        );
      },
    );
  }
}

class CustomEmojiSet {
  final Nip01Event _event;

  CustomEmojiSet({required Nip01Event event}) : _event = event;

  String get title {
    return _event.getFirstTag("title") ?? _event.getDtag()!;
  }

  List<CustomEmoji> get emoji {
    return _event.tags
        .where((t) => t[0] == "emoji")
        .map(CustomEmoji.fromTag)
        .toList();
  }
}

class CustomEmoji {
  final String name;
  final String url;

  CustomEmoji({required this.name, required this.url});

  static CustomEmoji fromTag(List<String> tag) {
    return CustomEmoji(name: tag[1], url: tag[2]);
  }
}
