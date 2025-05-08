import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/stream_tile.dart';

class StreamGrid extends StatelessWidget {
  final List<Nip01Event> events;
  const StreamGrid({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    final streams = events.map((e) => StreamEvent(e));
    final live = streams.where((s) => s.info.status == StreamStatus.live);
    return Column(children: [_streamGroup("Live", live)]);
  }

  Widget _streamGroup(String title, Iterable<StreamEvent> events) {
    return Column(
      spacing: 16,
      children: [
        Row(
          spacing: 16,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
            ),
            Expanded(
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: LAYER_1)),
                ),
              ),
            ),
          ],
        ),
        ...events.map((e) => StreamTileWidget(e)),
      ],
    );
  }
}
