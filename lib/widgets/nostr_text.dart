import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_stream_flutter/widgets/img.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/custom_emoji.dart';
import 'package:zap_stream_flutter/widgets/note_embed.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/video_player.dart';

class NoteText extends StatelessWidget {
  final Nip01Event event;
  final bool? embedMedia;
  final bool? showEmbeds;
  final bool? previewMedia;

  const NoteText({
    super.key,
    required this.event,
    this.embedMedia,
    this.showEmbeds,
    this.previewMedia,
  });

  @override
  Widget build(BuildContext context) {
    // use markdown rendering for articles
    if (event.kind == 30_023) {
      return MarkdownBody(data: event.content);
    }
    return RichText(
      text: TextSpan(
        children: textToSpans(
          context,
          event.content,
          event.tags,
          event.pubKey,
          showEmbeds: showEmbeds,
          embedMedia: embedMedia,
          previewMedia: previewMedia,
        ),
      ),
    );
  }
}

/// Converts a nostr note text containing links
/// and mentions into multiple spans for rendering
/// /// https://github.com/leo-lox/camelus/blob/f58455a0ac07fcc780bdc69b8f4544fd5ea4a46d/lib/presentation_layer/components/note_card/note_card_build_split_content.dart#L262
/// Compiled once; it used to be rebuilt for every chat row on every rebuild.
final RegExp _tokenExp = RegExp(
  r'nostr:(nprofile|npub)[a-zA-Z0-9]+|'
  r'nostr:(note|nevent|naddr)[a-zA-Z0-9]+|'
  r'(#\$\$\s*[0-9]+\s*\$\$)|'
  r'(#\w+)|' // Hashtags
  r'(:\w+:)|' // custom emoji
  r'(https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,10}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*))', // URLs
  caseSensitive: false,
);

/// [recognizers] collects the tap recognizers created for links so the
/// owning widget can dispose them; without it they leak with every rebuild.
List<InlineSpan> textToSpans(
  BuildContext context,
  String content,
  List<List<String>> tags,
  String pubkey, {
  bool? showEmbeds,
  bool? embedMedia,
  bool? previewMedia,
  List<GestureRecognizer>? recognizers,
}) {
  List<InlineSpan> spans = [];

  content.splitMapJoin(
    _tokenExp,
    onMatch: (Match match) {
      String? matched = match.group(0);
      if (matched != null) {
        if (matched.startsWith('nostr:')) {
          spans.add(_buildProfileOrNoteSpan(matched, showEmbeds ?? true));
        } else if (matched.startsWith('#')) {
          spans.add(_buildHashtagSpan(matched));
        } else if (matched.startsWith('http')) {
          spans.add(
            _buildUrlSpan(
              context,
              matched,
              embedMedia ?? false,
              previewMedia ?? true,
              recognizers,
            ),
          );
        } else if (matched.startsWith(":") &&
            matched.endsWith(":") &&
            tags.any(
              (t) =>
                  t.length > 2 &&
                  t[0] == "emoji" &&
                  t[1] == matched.substring(1, matched.length - 1),
            )) {
          spans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: CustomEmoji(emoji: matched, tags: tags, size: 24),
            ),
          );
        }
      }
      return '';
    },
    onNonMatch: (String text) {
      spans.add(TextSpan(text: text));
      return '';
    },
  );

  return spans;
}

InlineSpan _buildProfileOrNoteSpan(String word, bool showEmbeds) {
  final cleanedWord = word.replaceAll('nostr:', '');
  final isProfile =
      cleanedWord.startsWith('nprofile') || cleanedWord.startsWith('npub');
  final isNote =
      cleanedWord.startsWith('note') ||
      cleanedWord.startsWith('nevent') ||
      cleanedWord.startsWith("naddr");

  if (isProfile) {
    // a typo'd or truncated npub in a chat message used to throw out of
    // build() and blank the whole row
    String hexKey;
    try {
      hexKey = bech32ToHex(cleanedWord);
    } catch (_) {
      hexKey = "";
    }
    if (hexKey.length == 64) {
      return _inlineMention(hexKey);
    } else {
      return TextSpan(text: "@$cleanedWord");
    }
  }
  if (isNote && showEmbeds) {
    return WidgetSpan(
      child: NoteEmbedWidget(link: cleanedWord),
      alignment: PlaceholderAlignment.middle,
    );
  } else {
    return TextSpan(
      text: word,
      style: TextStyle(color: PRIMARY_1),
    );
  }
}

InlineSpan _buildHashtagSpan(String word) {
  return TextSpan(
    text: word,
    style: TextStyle(color: PRIMARY_1),
  );
}

InlineSpan _buildUrlSpan(
  BuildContext context,
  String url,
  bool embedMedia,
  bool previewMedia,
  List<GestureRecognizer>? recognizers,
) {
  final isImage =
      url.endsWith(".jpg") ||
      url.endsWith(".gif") ||
      url.endsWith(".jpeg") ||
      url.endsWith(".webp") ||
      url.endsWith(".png") ||
      url.endsWith(".bmp");
  final isVideo =
      url.endsWith(".mp4") ||
      url.endsWith(".mov") ||
      url.endsWith(".webm") ||
      url.endsWith(".mkv") ||
      url.endsWith(".m3u8");
  if (embedMedia && isImage) {
    return WidgetSpan(child: Img(url: url));
  }
  if (embedMedia && isVideo) {
    return WidgetSpan(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Center(child: VideoPlayerWidget(url: url, autoPlay: false)),
      ),
    );
  }
  final recognizer = TapGestureRecognizer();
  recognizers?.add(recognizer);
  return TextSpan(
    text: url,
    style: TextStyle(color: PRIMARY_1),
    recognizer: recognizer
      ..onTap = () {
        if (previewMedia) {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: LAYER_1,
                  borderRadius: DEFAULT_BR,
                ),
                child: isImage
                    ? Img(url: url)
                    : AspectRatio(
                        aspectRatio: 16 / 9,
                        child: VideoPlayerWidget(url: url, autoPlay: false),
                      ),
              );
            },
          );
        } else {
          launchUrl(Uri.parse(url));
        }
      },
  );
}

InlineSpan _inlineMention(String pubkey) {
  return WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: ProfileLoaderWidget(pubkey, (ctx, profile) {
      return GestureDetector(
        onTap: () =>
            ctx.push("/p/${Nip19.encodePubKey(pubkey)}", extra: profile.data),
        child: Text(
          "@${ProfileNameWidget.nameFromProfile(profile.data ?? Metadata(pubKey: pubkey))}",
          style: TextStyle(color: PRIMARY_1),
        ),
      );
    }),
  );
}
