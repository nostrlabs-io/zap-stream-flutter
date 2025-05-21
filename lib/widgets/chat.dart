import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/chat_badge.dart';
import 'package:zap_stream_flutter/widgets/chat_message.dart';
import 'package:zap_stream_flutter/widgets/chat_raid.dart';
import 'package:zap_stream_flutter/widgets/chat_timeout.dart';
import 'package:zap_stream_flutter/widgets/chat_write.dart';
import 'package:zap_stream_flutter/widgets/chat_zap.dart';
import 'package:zap_stream_flutter/widgets/countdown.dart';
import 'package:zap_stream_flutter/widgets/goal.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatWidget extends StatelessWidget {
  final StreamEvent stream;

  const ChatWidget({super.key, required this.stream});
  @override
  Widget build(BuildContext context) {
    var moderators = [stream.info.host];
    final myKey = ndk.accounts.getPublicKey();
    if (myKey != null) {
      moderators.add(myKey);
    }

    var filters = [
      Filter(kinds: [1311, 9735], limit: 200, aTags: [stream.aTag]),
      Filter(kinds: [1312, 1313], limit: 200, aTags: [stream.aTag]),
      Filter(kinds: [Nip51List.kMute], authors: moderators),
      Filter(kinds: [1314], authors: moderators),
      Filter(kinds: [8], authors: [stream.info.host]),
    ];
    return RxFilter<Nip01Event>(
      Key("stream:chat:${stream.aTag}"),
      relays: stream.info.relays,
      filters: filters,
      builder: (ctx, state) {
        final now = DateTime.now().millisecondsSinceEpoch / 1000;
        final firstPassEvents =
            (state ?? [])
                .where(
                  (e) => switch (e.kind) {
                    1314 =>
                      moderators.contains(e.pubKey) &&
                          double.parse(e.getFirstTag("expiration")!) >
                              now, // filter timeouts to only people allowed to mute
                    // TODO: check other kinds are valid for this stream
                    _ => true,
                  },
                )
                .toList();
        final mutedPubkeys =
            firstPassEvents
                .where(
                  (e) =>
                      e.kind == Nip51List.kMute ||
                      (e.kind == 1314 &&
                          e.createdAt < now &&
                          double.parse(e.getFirstTag("expiration")!) > now),
                )
                .map((e) => e.tags)
                .expand((e) => e)
                .where((e) => e[0] == "p")
                .map((e) => e[1])
                .toSet();

        final isChatDisabled = mutedPubkeys.contains(myKey);
        final filteredChat =
            firstPassEvents
                .where((e) {
                  final author = switch (e.kind) {
                    9735 => ZapReceipt.fromEvent(e).sender ?? e.pubKey,
                    _ => e.pubKey,
                  };
                  return moderators.contains(
                        author,
                      ) || // cant mute self or host
                      !mutedPubkeys.contains(author);
                })
                // filter events that are created before stream start time
                .where((e) => e.createdAt >= (stream.info.starts ?? 0))
                .sortedBy((e) => e.createdAt)
                .reversed
                .toList();

        final zaps =
            filteredChat
                .where((e) => e.kind == 9735)
                .map((e) => ZapReceipt.fromEvent(e))
                .toList();
        // pubkey -> Set<badge a tag>
        final badgeAwards = filteredChat
            .where((e) => e.kind == 8)
            .map((e) => e.getTags("p").map((p) => (p, e.getFirstTag("a")!)))
            .expand((v) => v)
            .groupFoldBy(
              (e) => e.$1,
              (Set<String>? acc, v) => (acc ?? {})..add(v.$2),
            );

        return Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (zaps.isNotEmpty) _TopZappersWidget(events: zaps),
            if (stream.info.goal != null) GoalWidget.id(stream.info.goal!),
            Expanded(
              child: ListView.builder(
                reverse: true,
                primary: true,
                itemCount: filteredChat.length,
                itemBuilder:
                    (ctx, idx) => switch (filteredChat[idx].kind) {
                      1311 => ChatMessageWidget(
                        key: Key("chat:${filteredChat[idx].id}"),
                        stream: stream,
                        msg: filteredChat[idx],
                        badges:
                            badgeAwards[filteredChat[idx].pubKey]
                                ?.map(
                                  (a) => ChatBadgeWidget.fromATag(
                                    a,
                                    key: Key("${filteredChat[idx].pubKey}:$a"),
                                  ),
                                )
                                .toList(),
                      ),
                      1312 => ChatRaidMessage(
                        event: filteredChat[idx],
                        stream: stream,
                      ),
                      1314 => ChatTimeoutWidget(timeout: filteredChat[idx]),
                      9735 => ChatZapWidget(
                        key: Key("chat:${filteredChat[idx].id}"),
                        stream: stream,
                        zap: filteredChat[idx],
                      ),
                      8 => ChatBadgeAwardWidget(
                        event: filteredChat[idx],
                        stream: stream,
                      ),
                      _ => SizedBox(),
                    },
              ),
            ),
            if (stream.info.status == StreamStatus.live && !isChatDisabled)
              WriteMessageWidget(stream: stream),
            if (stream.info.status == StreamStatus.live && isChatDisabled)
              _chatDisabled(firstPassEvents),
            if (stream.info.status == StreamStatus.ended)
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(bottom: 8, top: 4),
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: DEFAULT_BR,
                  color: PRIMARY_1,
                ),
                child: Text(
                  t.stream.chat.ended,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _chatDisabled(List<Nip01Event> events) {
    final myKey = ndk.accounts.getPublicKey();
    final timeoutEvent = events.firstWhereOrNull(
      (e) => e.kind == 1314 && e.pTags.contains(myKey),
    );
    return Container(
      padding: EdgeInsets.all(12),
      width: double.maxFinite,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: WARNING),
      child: Column(
        children: [
          Text(
            t.stream.chat.disabled,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          if (timeoutEvent != null)
            CountdownTimer(
              onTrigger: () => {},
              format: (time) => t.stream.chat.disabled_timeout(time: time),
              style: TextStyle(color: LAYER_5),
              triggerAt: DateTime.fromMillisecondsSinceEpoch(
                int.parse(timeoutEvent.getFirstTag("expiration")!) * 1000,
              ),
            ),
        ],
      ),
    );
  }
}

class _TopZappersWidget extends StatelessWidget {
  final List<ZapReceipt> events;

  const _TopZappersWidget({required this.events});

  @override
  Widget build(BuildContext context) {
    final topZaps =
        events
            .fold(<String, int>{}, (acc, e) {
              if (e.sender != null) {
                acc[e.sender!] = (acc[e.sender!] ?? 0) + e.amountSats!;
              }
              return acc;
            })
            .entries
            .sortedBy((e) => e.value)
            .reversed
            .take(10)
            .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      primary: false,
      child: Row(
        spacing: 10,
        children:
            topZaps
                .map(
                  (v) => Container(
                    padding: EdgeInsets.only(left: 4, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: DEFAULT_BR,
                      border: Border.all(color: LAYER_3),
                    ),
                    child: ProfileWidget.pubkey(
                      v.key,
                      showName: false,
                      size: 20,
                      spacing: 0,
                      children: [
                        Icon(Icons.bolt, color: ZAP_1),
                        Text(formatSats(v.value)),
                      ],
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
