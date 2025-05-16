import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button_follow.dart';
import 'package:zap_stream_flutter/widgets/game_info.dart';
import 'package:zap_stream_flutter/widgets/live_timer.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/stream_cards.dart';

class StreamInfoWidget extends StatelessWidget {
  final StreamEvent stream;

  const StreamInfoWidget({super.key, required this.stream});

  @override
  Widget build(BuildContext context) {
    final startedDate =
        stream.info.starts != null
            ? DateTime.fromMillisecondsSinceEpoch(stream.info.starts! * 1000)
            : null;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileWidget.pubkey(stream.info.host, linkToProfile: false),
          FollowButton(
            pubkey: stream.info.host,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Text(
            stream.info.title ?? "",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          if (startedDate != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: LAYER_5, fontSize: 14),
                    children: [
                      TextSpan(text: "Started "),
                      TextSpan(text: DateFormat().format(startedDate)),
                    ],
                  ),
                ),
                LiveTimerWidget(started: startedDate),
              ],
            ),
          if (stream.info.summary?.isNotEmpty ?? false)
            Text.rich(
              TextSpan(
                children: textToSpans(
                  stream.info.summary!,
                  [],
                  stream.info.host,
                ),
              ),
            ),

          if (stream.info.tags.isNotEmpty || stream.info.gameInfo != null)
            Row(
              spacing: 2,
              children: [
                if (stream.info.gameInfo != null)
                  GameInfoWidget(info: stream.info.gameInfo!),
                ...stream.info.tags.map(
                  (t) => PillWidget(
                    color: LAYER_2,
                    onTap: () {
                      context.push("/t/${Uri.encodeComponent(t)}");
                    },
                    child: Text(
                      t,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          StreamCardsWidget(stream: stream),
        ],
      ),
    );
  }
}
