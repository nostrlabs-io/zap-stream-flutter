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

class ChatMessageParsed {
  late final Nip01Event _event;
  ZapReceipt? _zap;

  ChatMessageParsed(Nip01Event ev) {
    _event = ev;
    if (ev.kind == 9735) {
      try {
        _zap = ZapReceipt.fromEvent(ev);
      } catch (e) {
        _zap = null;
      }
    }
  }

  Nip01Event get event {
    return _event;
  }

  bool isZap() {
    return _zap != null;
  }

  ZapReceipt get zap {
    return _zap!;
  }

  String get authorPubKey {
    return _zap?.sender ?? _event.pubKey;
  }
}

/// Expiration timestamp of a NIP-based timeout event, or null when the tag is
/// absent or not a number.
///
/// These events arrive from relays, so the tag cannot be assumed well-formed;
/// parsing it with `double.parse(...!)` threw inside a widget build and broke
/// chat rendering for everyone in the stream.
double? _expiryOf(Nip01Event e) {
  final raw = e.getFirstTag("expiration");
  if (raw == null) return null;
  return double.tryParse(raw);
}

class ChatWidget extends StatelessWidget {
  final StreamEvent stream;
  final bool showGoals;
  final bool showTopZappers;
  final bool showRaids;

  const ChatWidget({
    super.key,
    required this.stream,
    this.showGoals = true,
    this.showTopZappers = true,
    this.showRaids = true,
  });

  @override
  Widget build(BuildContext context) {
    var moderators = [stream.info.host];
    final myKey = ndk.accounts.getPublicKey();
    if (myKey != null) {
      moderators.add(myKey);
    }

    var filters = [
      Filter(kinds: [1311, 9735], limit: 200, aTags: [stream.aTag]),
      if (showRaids)
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
        final seenEventIds = <String>{};
        final firstPassEvents =
            (state ?? [])
                .where((e) => seenEventIds.add(e.id))
                .where(
                  (e) => switch (e.kind) {
                    // filter timeouts to only people allowed to mute.
                    // `expiration` is attacker-influenced relay data: a 1314
                    // with the tag missing or non-numeric used to throw out of
                    // build() and take the whole chat down for every viewer.
                    // A malformed timeout is ignored rather than applied, so a
                    // broken event cannot mute someone indefinitely.
                    1314 =>
                      moderators.contains(e.pubKey) &&
                          (_expiryOf(e) ?? 0) > now,
                    // TODO: check other kinds are valid for this stream
                    _ => true,
                  },
                )
                .map((e) => ChatMessageParsed(e))
                .toList();
        final mutedPubkeys =
            firstPassEvents
                .where(
                  (e) =>
                      e.event.kind == Nip51List.kMute ||
                      (e.event.kind == 1314 &&
                          e.event.createdAt < now &&
                          (_expiryOf(e.event) ?? 0) > now),
                )
                .map((e) => e.event.tags)
                .expand((e) => e)
                .where((e) => e[0] == "p")
                .map((e) => e[1])
                .toSet();

        final isChatDisabled = mutedPubkeys.contains(myKey);
        final filteredChat =
            firstPassEvents
                .where((e) {
                  return moderators.contains(e.authorPubKey) ||
                      !mutedPubkeys.contains(e.authorPubKey);
                })
                // filter events that are created before stream start time
                .where((e) => e.event.createdAt >= (stream.info.starts ?? 0))
                .sortedBy((e) => e.event.createdAt)
                .reversed
                .toList();

        final zaps =
            filteredChat.where((e) => e.isZap()).map((e) => e.zap).toList();
        // pubkey -> Set<badge a tag>
        final badgeAwards = filteredChat
            .where((e) => e.event.kind == 8)
            // a kind 8 without an `a` tag is malformed; skip it rather than
            // letting the `!` throw out of build()
            .where((e) => e.event.getFirstTag("a") != null)
            .map(
              (e) => e.event
                  .getTags("p")
                  .map((p) => (p, e.event.getFirstTag("a")!)),
            )
            .expand((v) => v)
            .groupFoldBy(
              (e) => e.$1,
              (Set<String>? acc, v) => (acc ?? {})..add(v.$2),
            );

        return Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (zaps.isNotEmpty && showTopZappers)
              _TopZappersWidget(events: zaps),
            if (stream.info.goal != null && showGoals)
              GoalWidget.id(stream.info.goal!),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 80),
                reverse: true,
                itemCount: filteredChat.length,
                itemBuilder: (ctx, idx) {
                  final msg = filteredChat[idx];
                  final widget = switch (msg.event.kind) {
                    1311 => ChatMessageWidget(
                      stream: stream,
                      msg: msg.event,
                      key: Key("chat-msg:${msg.event.id}"),
                      badges:
                          badgeAwards[msg.event.pubKey]
                              ?.map(
                                (a) => ChatBadgeWidget.fromATag(
                                  a,
                                  key: Key("${msg.event.pubKey}:$a"),
                                ),
                              )
                              .toList(),
                    ),
                    1312 => ChatRaidMessage(
                      event: msg.event,
                      stream: stream,
                      key: Key("chat-raid:${msg.event.id}"),
                    ),
                    1314 => ChatTimeoutWidget(
                      timeout: msg.event,
                      key: Key("chat-timeout:${msg.event.id}"),
                    ),
                    9735 => ChatZapWidget(
                      stream: stream,
                      zap: msg.event,
                      key: Key("chat-zap:${msg.event.id}"),
                    ),
                    8 => ChatBadgeAwardWidget(
                      event: msg.event,
                      stream: stream,
                      key: Key("chat-badge:${msg.event.id}"),
                    ),
                    _ => SizedBox(),
                  };

                  return widget;
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

  Widget _chatDisabled(List<ChatMessageParsed> events) {
    final myKey = ndk.accounts.getPublicKey();
    final timeoutEvent = events.firstWhereOrNull(
      (e) => e.event.kind == 1314 && e.event.pTags.contains(myKey),
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
                int.parse(timeoutEvent.event.getFirstTag("expiration")!) * 1000,
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
