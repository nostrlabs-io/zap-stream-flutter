import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/chat_modal.dart';
import 'package:zap_stream_flutter/widgets/custom_emoji.dart';
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
          child: Column(
            spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_chatText(profile), ChatReactions(msg: msg)],
          ),
        ),
      );
    }, key: Key("chat:${msg.id}:profile"));
  }

  Widget _chatText(Metadata profile) {
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
          ...textToSpans(msg.content, msg.tags, msg.pubKey),
        ],
      ),
    );
  }
}

class ChatReactions extends StatelessWidget {
  final Nip01Event msg;

  const ChatReactions({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return RxFilter<Nip01Event>(
      Key("chat:${msg.id}:reactions"),
      filters: [
        Filter(kinds: [9735, 7], eTags: [msg.id]),
      ],
      builder: (ctx, data) => _chatReactions(ctx, data),
    );
  }

  Widget _chatReactions(BuildContext context, List<Nip01Event>? events) {
    if ((events?.length ?? 0) == 0) return SizedBox.shrink();

    // reactions must have e tag pointing to msg
    final filteredEvents = events!.where((e) => e.getEId() == msg.id);
    final zaps = filteredEvents
        .where((e) => e.kind == 9735)
        .map((e) => ZapReceipt.fromEvent(e));
    final reactions = filteredEvents.where((e) => e.kind == 7);

    return Row(
      spacing: 8,
      children: [
        if (zaps.isNotEmpty)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(color: LAYER_2, borderRadius: DEFAULT_BR),
            child: Row(
              children: [
                Icon(Icons.bolt, color: ZAP_1, size: 16),
                Text(
                  formatSats(
                    zaps.fold(0, (acc, v) => acc + (v.amountSats ?? 0)),
                  ),
                ),
              ],
            ),
          ),
        if (reactions.isNotEmpty)
          ...reactions
              .fold(<String, Set<Nip01Event>>{}, (acc, v) {
                // ignore: prefer_collection_literals
                acc[v.content] ??= Set();
                acc[v.content]!.add(v);
                return acc;
              })
              .entries
              .map(
                (v) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: LAYER_2,
                    borderRadius: DEFAULT_BR,
                  ),
                  child: Center(
                    child: CustomEmoji(emoji: v.key, tags: v.value.first.tags),
                  ),
                ),
              ),
      ],
    );
  }
}
