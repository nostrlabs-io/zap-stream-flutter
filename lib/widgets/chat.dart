import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/chat_badge.dart';
import 'package:zap_stream_flutter/widgets/chat_message.dart';
import 'package:zap_stream_flutter/widgets/chat_raid.dart';
import 'package:zap_stream_flutter/widgets/chat_write.dart';
import 'package:zap_stream_flutter/widgets/chat_zap.dart';
import 'package:zap_stream_flutter/widgets/goal.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatWidget extends StatelessWidget {
  final StreamEvent stream;

  const ChatWidget({super.key, required this.stream});
  @override
  Widget build(BuildContext context) {
    var muteLists = [stream.info.host];
    if (ndk.accounts.getPublicKey() != null) {
      muteLists.add(ndk.accounts.getPublicKey()!);
    }

    var filters = [
      Filter(kinds: [1311, 9735], limit: 200, aTags: [stream.aTag]),
      Filter(kinds: [1312], limit: 200, aTags: [stream.aTag]),
      Filter(kinds: [Nip51List.kMute], authors: muteLists),
      Filter(kinds: [8], authors: [stream.info.host]),
    ];
    return RxFilter<Nip01Event>(
      Key("stream:chat:${stream.aTag}"),
      relays: stream.info.relays,
      filters: filters,
      builder: (ctx, state) {
        final mutedPubkeys =
            (state ?? [])
                .where((e) => e.kind == Nip51List.kMute)
                .map((e) => e.tags)
                .expand((e) => e)
                .where(
                  (e) => e[0] == "p" && e[1] != stream.info.host,
                ) // cant mute host
                .map((e) => e[1])
                .toSet();

        final filteredChat =
            (state ?? [])
                .where(
                  (e) =>
                      !mutedPubkeys.contains(switch (e.kind) {
                        9735 => ZapReceipt.fromEvent(e).sender ?? e.pubKey,
                        _ => e.pubKey,
                      }),
                )
                .sortedBy((e) => e.createdAt)
                .reversed
                .toList();

        final zaps =
            filteredChat
                .where((e) => e.kind == 9735)
                .map((e) => ZapReceipt.fromEvent(e))
                .toList();
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
                      ),
                      1312 => ChatRaidMessage(
                        event: filteredChat[idx],
                        stream: stream,
                      ),
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
            if (stream.info.status == StreamStatus.live)
              WriteMessageWidget(stream: stream),
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
                  "STREAM ENDED",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
          ],
        );
      },
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
