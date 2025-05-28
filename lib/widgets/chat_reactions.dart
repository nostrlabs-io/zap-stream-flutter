import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/custom_emoji.dart';

class ChatReactions extends StatelessWidget {
  final Nip01Event msg;
  final List<Nip01Event> events;

  const ChatReactions({super.key, required this.msg, required this.events});

  static Widget forMessage(Nip01Event ev) {
    return RxFilter<Nip01Event>(
      Key("chat:reactions:${ev.id}"),
      filters: [
        Filter(kinds: [7, 9735], eTags: [ev.id]),
      ],
      builder: (context, state) {
        return ChatReactions(msg: ev, events: state ?? []);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // reactions must have e tag pointing to msg
    final filteredEvents = events.where((e) => e.getEId() == msg.id);
    if (filteredEvents.isEmpty) return SizedBox.shrink();
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
