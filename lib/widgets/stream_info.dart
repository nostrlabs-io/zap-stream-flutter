import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

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
          ProfileWidget.pubkey(stream.info.host),
          Text(
            stream.info.title ?? "",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          if (startedDate != null)
            RichText(
              text: TextSpan(
                style: TextStyle(color: LAYER_5, fontSize: 14),
                children: [
                  TextSpan(text: "Started "),
                  TextSpan(text: DateFormat().format(startedDate)),
                ],
              ),
            ),
          if (stream.info.summary?.isNotEmpty ?? false)
            Text(stream.info.summary!),
        ],
      ),
    );
  }
}
