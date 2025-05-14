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
    final streams =
        events
            .map((e) => StreamEvent(e))
            .where((e) => e.info.stream?.contains(".m3u8") ?? false)
            .sortedBy((a) => a.info.starts ?? a.event.createdAt)
            .reversed;
    final live = streams.where((s) => s.info.status == StreamStatus.live);
    final ended = streams.where((s) => s.info.status == StreamStatus.ended);
    final planned = streams.where((s) => s.info.status == StreamStatus.planned);
    return Column(
      spacing: 16,
      children: [
        if (showLive && live.isNotEmpty)
          _streamGroup(context, "Live", live.toList()),
        if (showPlanned && planned.isNotEmpty)
          _streamGroup(context, "Planned", planned.toList()),
        if (showEnded && ended.isNotEmpty)
          _streamGroup(context, "Ended", ended.toList()),
      ],
    );
  }

  Widget _streamTitle(String title) {
    return Row(
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
    );
  }

  Widget _streamGroup(
    BuildContext context,
    String title,
    List<StreamEvent> events,
  ) {
    return Column(
      spacing: 16,
      children: [
        _streamTitle(title),
        ListView.builder(
          itemCount: events.length,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (ctx, idx) {
            final stream = events[idx];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: StreamTileWidget(stream),
            );
          },
        ),
      ],
    );
  }
}
