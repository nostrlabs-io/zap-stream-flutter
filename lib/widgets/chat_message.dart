import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/chat_modal.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatMessageWidget extends StatelessWidget {
  final StreamEvent stream;
  final Nip01Event msg;
  final List<Widget>? badges;

  const ChatMessageWidget({
    super.key,
    required this.stream,
    required this.msg,
    this.badges,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileLoaderWidget(msg.pubKey, (ctx, state) {
      final profile = state.data ?? Metadata(pubKey: msg.pubKey);
      return GestureDetector(
        onLongPress: () {
          if (ndk.accounts.canSign) {
            showModalBottomSheet(
              context: context,
              constraints: BoxConstraints.expand(),
              builder:
                  (ctx) => ChatModalWidget(
                    profile: profile,
                    event: msg,
                    stream: stream,
                  ),
            );
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
          child: _chatText(context, profile),
        ),
      );
    });
  }

  Widget _chatText(BuildContext context, Metadata profile) {
    return RichText(
      text: TextSpan(
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
                color: msg.pubKey == stream.info.host ? PRIMARY_1 : SECONDARY_1,
              ),
            ),
          ),
          if (badges?.isNotEmpty ?? false) TextSpan(text: " "),
          if (badges?.isNotEmpty ?? false)
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Row(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: badges!,
              ),
            ),
          TextSpan(text: " "),
          ...textToSpans(
            context,
            msg.content,
            msg.tags,
            msg.pubKey,
            embedMedia: false,
          ),
        ],
      ),
    );
  }
}
