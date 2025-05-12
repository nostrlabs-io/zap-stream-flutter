import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

/// Converts a nostr note text containing links
/// and mentions into multiple spans for rendering
List<InlineSpan> textToSpans(
  String content,
  List<List<String>> tags,
  String pubkey,
) {
  return _buildContentSpans(content);
}

/// Content parser from camelus
/// https://github.com/leo-lox/camelus/blob/f58455a0ac07fcc780bdc69b8f4544fd5ea4a46d/lib/presentation_layer/components/note_card/note_card_build_split_content.dart#L262
List<InlineSpan> _buildContentSpans(String content) {
  List<InlineSpan> spans = [];
  RegExp exp = RegExp(
    r'nostr:(nprofile|npub)[a-zA-Z0-9]+|'
    r'nostr:(note|nevent)[a-zA-Z0-9]+|'
    r'(#\$\$\s*[0-9]+\s*\$\$)|'
    r'(#\w+)|' // Hashtags
    r'(https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*))', // URLs
    caseSensitive: false,
  );

  content.splitMapJoin(
    exp,
    onMatch: (Match match) {
      String? matched = match.group(0);
      if (matched != null) {
        if (matched.startsWith('nostr:')) {
          spans.add(_buildProfileOrNoteSpan(matched));
        } else if (matched.startsWith('#')) {
          spans.add(_buildHashtagSpan(matched));
        } else if (matched.startsWith('http')) {
          spans.add(_buildUrlSpan(matched));
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

InlineSpan _buildProfileOrNoteSpan(String word) {
  final cleanedWord = word.replaceAll('nostr:', '');
  final isProfile =
      cleanedWord.startsWith('nprofile') || cleanedWord.startsWith('npub');
  final isNote =
      cleanedWord.startsWith('note') || cleanedWord.startsWith('nevent');

  if (isProfile) {
    return _inlineMention(Nip19.decode(cleanedWord));
  }
  if (isNote) {
    final eventId = Nip19.decode(cleanedWord);
    return TextSpan(text: eventId, style: TextStyle(color: PRIMARY_1));
  } else {
    return TextSpan(text: word);
  }
}

InlineSpan _buildHashtagSpan(String word) {
  return TextSpan(text: word, style: TextStyle(color: PRIMARY_1));
}

InlineSpan _buildUrlSpan(String url) {
  return TextSpan(
    text: url,
    style: TextStyle(color: PRIMARY_1),
    recognizer:
        TapGestureRecognizer()
          ..onTap = () {
            launchUrl(Uri.parse(url));
          },
  );
}

InlineSpan _inlineMention(String pubkey) {
  return WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: ProfileLoaderWidget(pubkey, (ctx, profile) {
      return GestureDetector(
        onTap:
            () => ctx.push(
              "/p/${Nip19.encodePubKey(pubkey)}",
              extra: profile.data,
            ),
        child: Text(
          "@${ProfileNameWidget.nameFromProfile(profile.data ?? Metadata(pubKey: pubkey))}",
          style: TextStyle(color: PRIMARY_1),
        ),
      );
    }),
  );
}
