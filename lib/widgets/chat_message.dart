import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/chat_badge.dart';
import 'package:zap_stream_flutter/widgets/chat_modal.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatMessageWidget extends StatelessWidget {
  final StreamEvent stream;
  final Nip01Event msg;

  /// `a` tags of the badges awarded to the author
  final List<String>? badges;

  const ChatMessageWidget({
    super.key,
    required this.stream,
    required this.msg,
    this.badges,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileLoaderWidget(msg.pubKey, (ctx, state) {
      return _ChatMessageBody(
        stream: stream,
        msg: msg,
        profile: state.data ?? Metadata(pubKey: msg.pubKey),
        badges: badges,
      );
    });
  }
}

class _ChatMessageBody extends StatefulWidget {
  final StreamEvent stream;
  final Nip01Event msg;
  final Metadata profile;
  final List<String>? badges;

  const _ChatMessageBody({
    required this.stream,
    required this.msg,
    required this.profile,
    this.badges,
  });

  @override
  State<_ChatMessageBody> createState() => _ChatMessageBodyState();
}

/// Builds the row's text once and hands the same [TextSpan] back on every
/// rebuild. The chat list rebuilds every visible row a few times a second
/// while messages arrive; re-parsing the content and re-laying out a
/// paragraph full of widget spans each time is what made scrolling stutter.
/// [RenderParagraph] skips layout when it is given an equal span, and widget
/// spans compare by identity, so the instances have to be reused.
class _ChatMessageBodyState extends State<_ChatMessageBody> {
  final List<GestureRecognizer> _recognizers = [];
  List<InlineSpan>? _content;
  TextSpan? _span;
  String? _spanName;
  String? _spanPicture;
  List<String>? _spanBadges;

  @override
  void dispose() {
    for (final r in _recognizers) {
      r.dispose();
    }
    super.dispose();
  }

  TextSpan _text(BuildContext context) {
    final profile = widget.profile;
    final name = ProfileNameWidget.nameFromProfile(profile);
    final cached = _span;
    if (cached != null &&
        _spanName == name &&
        _spanPicture == profile.picture &&
        listEquals(_spanBadges, widget.badges)) {
      return cached;
    }

    final msg = widget.msg;
    _content ??= textToSpans(
      context,
      msg.content,
      msg.tags,
      msg.pubKey,
      embedMedia: false,
      recognizers: _recognizers,
    );
    final badges = widget.badges ?? const [];

    _spanName = name;
    _spanPicture = profile.picture;
    _spanBadges = widget.badges;
    return _span = TextSpan(
      children: [
        WidgetSpan(
          child: AvatarWidget(profile: profile, size: 24),
          alignment: PlaceholderAlignment.middle,
        ),
        TextSpan(text: " "),
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: ProfileNameWidget(
            profile: profile,
            style: TextStyle(
              color: msg.pubKey == widget.stream.info.host
                  ? PRIMARY_1
                  : SECONDARY_1,
            ),
          ),
        ),
        if (badges.isNotEmpty) TextSpan(text: " "),
        if (badges.isNotEmpty)
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Row(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final a in badges)
                  ChatBadgeWidget.fromATag(a, key: Key("${msg.pubKey}:$a")),
              ],
            ),
          ),
        TextSpan(text: " "),
        ..._content!,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        if (ndk.accounts.canSign) {
          showModalBottomSheet(
            context: context,
            constraints: BoxConstraints.expand(),
            builder: (ctx) => ChatModalWidget(
              profile: widget.profile,
              event: widget.msg,
              stream: widget.stream,
            ),
          );
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
        child: RichText(text: _text(context)),
      ),
    );
  }
}
