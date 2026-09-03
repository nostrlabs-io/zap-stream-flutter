import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/stream_tile.dart';

/// Grouped list of streams as a sliver, for use inside a [CustomScrollView].
///
/// Takes already-parsed [StreamEvent]s: parse once when the event arrives
/// (see the `mapper` of `RxFilter`) rather than on every rebuild of the list.
class StreamGrid extends StatefulWidget {
  final List<StreamEvent> events;
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
  State<StreamGrid> createState() => _StreamGrid();
}

class _StreamGrid extends State<StreamGrid> {
  Set<String> _follows = const {};

  @override
  void initState() {
    super.initState();
    _loadFollows();
  }

  /// Loaded once per mount. Creating the future inside build() reset the
  /// FutureBuilder on every incoming event, so the "following" group blinked
  /// in and out while the list was loading.
  Future<void> _loadFollows() async {
    final pubkey = ndk.accounts.getPublicKey();
    if (pubkey == null) return;
    final list = await ndk.follows.getContactList(pubkey);
    if (mounted && list != null) {
      setState(() {
        _follows = list.contacts.toSet();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now().millisecondsSinceEpoch / 1000;
    final streams = widget.events
        .where((e) => e.info.stream?.contains(".m3u8") ?? false)
        .where((e) => isValidStreamUrl(e.info.stream))
        .where((e) => (e.info.starts ?? e.event.createdAt) <= now)
        .sortedBy((a) => a.info.starts ?? a.event.createdAt)
        .reversed;
    final live = streams.where((s) => s.info.status == StreamStatus.live);
    final ended = streams.where((s) => s.info.status == StreamStatus.ended);
    final planned = streams.where((s) => s.info.status == StreamStatus.planned);

    final followsLive = live.where((e) => _follows.contains(e.info.host));
    final liveNotFollowing = live.where((e) => !_follows.contains(e.info.host));

    final groups = [
      if (followsLive.isNotEmpty)
        _streamGroup(t.stream_list.following, followsLive.toList()),
      if (widget.showLive && liveNotFollowing.isNotEmpty)
        _streamGroup(t.stream_list.live, liveNotFollowing.toList()),
      if (widget.showPlanned && planned.isNotEmpty)
        _streamGroup(t.stream_list.planned, planned.toList()),
      if (widget.showEnded && ended.isNotEmpty)
        _streamGroup(t.stream_list.ended, ended.toList()),
    ];
    if (groups.isEmpty) {
      return SliverToBoxAdapter(child: SizedBox.shrink());
    }
    return SliverMainAxisGroup(slivers: groups);
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

  /// One titled group. The tiles are a real sliver list, so only the rows in
  /// the viewport are built; the previous shrink-wrapped list built all of
  /// them, images and profile lookups included, before anything painted.
  Widget _streamGroup(String title, List<StreamEvent> events) {
    return SliverPadding(
      padding: EdgeInsets.only(bottom: 16),
      sliver: SliverMainAxisGroup(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: _streamTitle(title),
            ),
          ),
          SliverList.builder(
            itemCount: events.length,
            itemBuilder: (ctx, idx) {
              final stream = events[idx];
              return Padding(
                key: ValueKey(stream.aTag),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: StreamTileWidget(stream),
              );
            },
          ),
        ],
      ),
    );
  }
}
