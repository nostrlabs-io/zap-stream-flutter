import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/chat_message.dart';
import 'package:zap_stream_flutter/widgets/chat_write.dart';
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
      Filter(kinds: [Nip51List.kMute], authors: muteLists),
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
            if (stream.info.goal != null)
              _StreamGoalWidget.id(stream.info.goal!),
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
                      9735 => _ChatZapWidget(
                        key: Key("chat:${filteredChat[idx].id}"),
                        stream: stream,
                        zap: filteredChat[idx],
                      ),
                      _ => SizedBox.shrink(),
                    },
              ),
            ),
            if (stream.info.status == StreamStatus.live)
              WriteMessageWidget(stream: stream),
            if (stream.info.status == StreamStatus.ended)
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 8),
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: DEFAULT_BR),
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

class _StreamGoalWidget extends StatelessWidget {
  final Nip01Event goal;

  const _StreamGoalWidget({required this.goal});

  static Widget id(String id) {
    return RxFilter<Nip01Event>(
      Key("stream:goal:$id"),
      leaveOpen: false,
      filters: [
        Filter(kinds: [9041], ids: [id]),
      ],
      builder: (ctx, state) {
        final goal = state?.firstOrNull;
        return goal != null ? _StreamGoalWidget(goal: goal) : SizedBox.shrink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final max = int.parse(goal.getFirstTag("amount") ?? "1");
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: RxFilter<Nip01Event>(
        Key("stream:goal:$id:zaps"),
        filters: [
          Filter(kinds: [9735], eTags: [goal.id]),
        ],
        builder: (ctx, state) {
          final zaps = (state ?? []).map((e) => ZapReceipt.fromEvent(e));
          final totalZaps =
              zaps.fold(0, (acc, v) => acc + (v.amountSats ?? 0)) * 1000;
          final progress = totalZaps / max;
          final remaining = ((max - totalZaps).clamp(0, max) / 1000).toInt();

          final q = MediaQuery.of(ctx);
          return Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text(goal.content)),
                  if (remaining > 0)
                    Text(
                      "Remaining: ${formatSats(remaining)}",
                      style: TextStyle(fontSize: 10, color: LAYER_5),
                    ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: LAYER_2,
                      borderRadius: DEFAULT_BR,
                    ),
                  ),
                  Container(
                    height: 10,
                    width: (q.size.width * progress).clamp(1, q.size.width),
                    decoration: BoxDecoration(
                      color: ZAP_1,
                      borderRadius: DEFAULT_BR,
                    ),
                  ),
                  if (remaining > 0)
                    Positioned(
                      right: 2,
                      child: Text(
                        "Goal: ${formatSats((max / 1000).toInt())}",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  if (remaining == 0)
                    Center(
                      child: Text(
                        "COMPLETE",
                        style: TextStyle(
                          color: LAYER_0,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          );
        },
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

class _ChatZapWidget extends StatelessWidget {
  final StreamEvent stream;
  final Nip01Event zap;

  const _ChatZapWidget({required this.stream, required this.zap, super.key});

  @override
  Widget build(BuildContext context) {
    final parsed = ZapReceipt.fromEvent(zap);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: ZAP_1),
        borderRadius: DEFAULT_BR,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _zapperRowZap(parsed),
          if (parsed.comment?.isNotEmpty ?? false) Text(parsed.comment!),
        ],
      ),
    );
  }

  Widget _zapperRowZap(ZapReceipt parsed) {
    if (parsed.sender != null) {
      return ProfileLoaderWidget(parsed.sender!, (ctx, state) {
        final name = ProfileNameWidget.nameFromProfile(
          state.data ?? Metadata(pubKey: parsed.sender!),
        );
        return _zapperRow(name, parsed.amountSats ?? 0, state.data);
      });
    } else {
      return _zapperRow("Anon", parsed.amountSats ?? 0, null);
    }
  }

  Widget _zapperRow(String name, int amount, Metadata? profile) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(color: ZAP_1),
            children: [
              WidgetSpan(
                child: Icon(Icons.bolt, color: ZAP_1),
                alignment: PlaceholderAlignment.middle,
              ),
              if (profile != null)
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: AvatarWidget(profile: profile, size: 20),
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
              TextSpan(text: name),
              TextSpan(text: " zapped ", style: TextStyle(color: FONT_COLOR)),
              TextSpan(text: formatSats(amount)),
              TextSpan(text: " sats", style: TextStyle(color: FONT_COLOR)),
            ],
          ),
        ),
      ],
    );
  }
}
