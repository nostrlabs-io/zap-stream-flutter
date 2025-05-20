import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';

class GoalWidget extends StatelessWidget {
  final Nip01Event goal;

  const GoalWidget({super.key, required this.goal});

  static Widget id(String id) {
    return RxFilter<Nip01Event>(
      Key("stream:goal:$id"),
      leaveOpen: false,
      filters: [
        Filter(kinds: [9041], ids: [id]),
      ],
      builder: (ctx, state) {
        final goal = state?.firstOrNull;
        return goal != null ? GoalWidget(goal: goal) : SizedBox.shrink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final max = int.parse(goal.getFirstTag("amount") ?? "1");
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: RxFilter<Nip01Event>(
        Key("goal:$id:zaps"),
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
                      t.goal.remaining(amount: formatSats(remaining)),
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
                        t.goal.title(amount: formatSats((max / 1000).floor())),
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  if (remaining == 0)
                    Center(
                      child: Text(
                        t.goal.complete,
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
