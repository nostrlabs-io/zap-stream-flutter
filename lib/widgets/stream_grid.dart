import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/stream_tile.dart';

class StreamGrid extends StatelessWidget {
  final List<Nip01Event> events;
  final bool showEnded;
  final bool showLive;
  final bool showPlanned;

  const StreamGrid({
    super.key,
    required this.events,
    this.showLive = true,
    this.showEnded = false,
    this.showPlanned = false,
  });

  @override
  Widget build(BuildContext context) {
    final streams = events
        .map((e) => StreamEvent(e))
        .where((e) => e.info.stream?.isNotEmpty ?? false)
        .sortedBy((a) => a.info.starts ?? a.event.createdAt);
    final live = streams.where((s) => s.info.status == StreamStatus.live);
    final ended = streams.where((s) => s.info.status == StreamStatus.ended);
    final planned = streams.where((s) => s.info.status == StreamStatus.planned);
    return Column(
      spacing: 16,
      children: [
        if (showLive && live.isNotEmpty) _streamGroup("Live", live),
        if (showPlanned && planned.isNotEmpty) _streamGroup("Planned", planned),
        if (showEnded && ended.isNotEmpty) _streamGroup("Ended", ended),
      ],
    );
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
                  border: Border(bottom: BorderSide(color: LAYER_2)),
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
