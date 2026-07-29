import 'dart:developer' as developer;

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:video_player_platform_interface/video_player_platform_interface.dart'
    show VideoTrack;
import 'package:zap_stream_flutter/hls.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/chat.dart';
import 'package:zap_stream_flutter/widgets/notifications_button.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/stream_info.dart';
import 'package:zap_stream_flutter/widgets/video_player_main.dart';
import 'package:zap_stream_flutter/widgets/zap.dart';

class StreamPage extends StatefulWidget {
  static const String path = "/e/:id";
  final StreamEvent stream;

  const StreamPage({super.key, required this.stream});

  static Widget loader(String id) {
    final entity = decodeBech32ToTLVEntity(id);
    return RxFilter<Nip01Event>(
      Key("stream-loader:$id"),
      filters: [entity.toFilter()],
      builder: (context, state) {
        final stream = state?.firstWhereOrNull(
          (e) => e.getDtag() == entity.specialUtf8,
        );
        if (stream != null) {
          return StreamPage(stream: StreamEvent(stream));
        } else {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  @override
  State<StatefulWidget> createState() => _StreamPage();
}

class _StreamPage extends State<StreamPage> with RouteAware {
  bool _offScreen = false;
  final GlobalKey _playerKey = GlobalKey();

  bool isWidgetVisible(BuildContext context) {
    final router = GoRouter.of(context);
    final currentConfiguration = router.routerDelegate.currentConfiguration;
    final match = currentConfiguration.matches.lastOrNull;
    final lastMatch = match is ShellRouteMatch
        ? match.matches.lastOrNull
        : match;
    return lastMatch != null &&
        (lastMatch.route is GoRoute &&
            (lastMatch.route as GoRoute).path == StreamPage.path);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void initState() {
    WakelockPlus.enable();
    super.initState();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    setState(() {
      developer.log("STREAM: ON SCREEN");
      _offScreen = false;
    });
  }

  @override
  void didPopNext() {
    setState(() {
      developer.log("STREAM: ON SCREEN");
      _offScreen = false;
    });
  }

  @override
  void didPushNext() {
    if (!isWidgetVisible(context)) {
      setState(() {
        developer.log("STREAM: OFF SCREEN");
        _offScreen = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RxFilter<Nip01Event>(
      Key("stream:event:${widget.stream.aTag}"),
      relays: widget.stream.info.relays,
      filters: [
        Filter(
          kinds: [widget.stream.event.kind],
          authors: [widget.stream.event.pubKey],
          dTags: [widget.stream.event.getDtag()!],
        ),
      ],
      builder: (ctx, state) {
        final stream = StreamEvent(state?.firstOrNull ?? widget.stream.event);
        final streamWidget = _buildPlayer(ctx, stream);
        return ValueListenableBuilder(
          valueListenable: mainPlayer.state,
          builder: (context, playerState, child) {
            if (playerState?.isPortrait == true) {
              return _buildPortraitStream(context, stream, child!);
            }
            return _buildLandscapeStream(context, stream, child!);
          },
          child: streamWidget,
        );
      },
    );
  }

  Widget _buildPlayer(BuildContext context, StreamEvent stream) {
    return (stream.info.stream != null && !_offScreen)
        ? MainVideoPlayerWidget(
            key: _playerKey,
            url: stream.info.stream!,
            placeholder: stream.info.image,
            isLive: true,
            title: stream.info.title,
          )
        : AspectRatio(
            aspectRatio: 16 / 9,
            child: (stream.info.image?.isNotEmpty ?? false)
                ? ProxyImg(url: stream.info.image)
                : Container(decoration: BoxDecoration(color: LAYER_1)),
          );
  }

  Widget _buildPortraitStream(
    BuildContext context,
    StreamEvent stream,
    Widget child,
  ) {
    final mq = MediaQuery.of(context);

    return Stack(
      children: [
        Positioned(child: child),
        Positioned(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  LAYER_0.withAlpha(255),
                  LAYER_0.withAlpha(200),
                  LAYER_0.withAlpha(10),
                ],
                stops: [0.0, 0.7, 1.0],
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _streamInfo(context, stream),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          child: Container(
            width: mq.size.width,
            height: mq.size.height * 0.4,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  LAYER_0.withAlpha(200),
                  LAYER_0.withAlpha(150),
                  LAYER_0.withAlpha(0),
                ],
                stops: [0.0, 0.8, 1.0],
              ),
            ),
            child: ShaderMask(
              blendMode: BlendMode.dstIn,
              shaderCallback: (rect) => LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  LAYER_0.withAlpha(255),
                  LAYER_0.withAlpha(200),
                  LAYER_0.withAlpha(0),
                ],
                stops: [0.0, 0.8, 1.0],
              ).createShader(rect),
              child: ChatWidget(
                stream: stream,
                showGoals: false,
                showTopZappers: false,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLandscapeStream(
    BuildContext context,
    StreamEvent stream,
    Widget child,
  ) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        child,
        ..._streamInfo(context, stream),
        Expanded(child: ChatWidget(stream: stream)),
      ],
    );
  }

  List<Widget> _streamInfo(BuildContext context, StreamEvent stream) {
    return [
      if (stream.info.title?.isNotEmpty ?? false)
        Text(
          stream.info.title!,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ProfileWidget.pubkey(
        stream.info.host,
        children: [
          NotificationsButtonWidget(pubkey: widget.stream.info.host),
          BasicButton(
            Row(children: [Icon(Icons.bolt, size: 14), Text(t.zap.button_zap)]),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
              color: PRIMARY_1,
              borderRadius: DEFAULT_BR,
            ),
            onTap: (context) {
              showModalBottomSheet(
                context: context,
                constraints: BoxConstraints.expand(),
                builder: (context) {
                  return SingleChildScrollView(
                    primary: false,
                    child: ZapWidget(
                      pubkey: stream.info.host,
                      target: stream.event,
                      onPaid: (_) {
                        context.pop();
                      },
                      zapTags:
                          // tag goal onto zap request
                          stream.info.goal != null
                          ? [
                              ["e", stream.info.goal!],
                            ]
                          : null,
                    ),
                  );
                },
              );
            },
          ),
          if (stream.info.participants != null)
            PillWidget(
              color: LAYER_1,
              child: Text(
                t.viewers(n: stream.info.participants!),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          if (stream.info.stream != null &&
              isHlsUrl(stream.info.stream!) &&
              mainPlayer.supportsVideoTracks)
            IconButton(
              onPressed: () => _showQualitySelector(context, stream),
              icon: Icon(Icons.slow_motion_video),
            ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                constraints: BoxConstraints.expand(),
                isScrollControlled: true,
                builder: (context) => StreamInfoWidget(stream: stream),
              );
            },
            child: Icon(Icons.info),
          ),
        ],
      ),
    ];
  }

  void _showQualitySelector(BuildContext context, StreamEvent stream) {
    showModalBottomSheet(
      context: context,
      builder: (context) => _QualitySelector(stream: stream),
    );
  }
}

/// Lists the renditions the player itself sees in the adaptive stream.
///
/// The `streaming` tags of a live event are one URL per egress, not per
/// quality, and reloading a rendition URL would restart playback; the platform
/// player switches tracks in place instead.
class _QualitySelector extends StatefulWidget {
  final StreamEvent stream;

  const _QualitySelector({required this.stream});

  @override
  State<StatefulWidget> createState() => _QualitySelectorState();
}

class _QualitySelectorState extends State<_QualitySelector> {
  late final Future<List<VideoTrack>> _tracks;

  @override
  void initState() {
    super.initState();
    _tracks = mainPlayer.videoTracks();
  }

  /// Height is what viewers recognise; bitrate is the only thing separating
  /// two renditions of the same height.
  String _label(VideoTrack track) {
    if (track.height != null) return "${track.height}p";
    if (track.label?.isNotEmpty ?? false) return track.label!;
    if (track.bitrate != null) {
      return "${(track.bitrate! / 1000000).toStringAsFixed(1)} Mbps";
    }
    return track.id;
  }

  Future<void> _select(VideoTrack? track) async {
    await mainPlayer.selectVideoTrack(track);
    if (mounted) {
      Navigator.pop(context);
    }
  }

  Widget _row(String label, VideoTrack? track) {
    final isCurrent = mainPlayer.selectedVideoTrackId == track?.id;
    return ListTile(
      title: Text(label),
      trailing: isCurrent ? Icon(Icons.check, color: PRIMARY_1) : null,
      onTap: isCurrent ? null : () => _select(track),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: FutureBuilder(
        future: _tracks,
        builder: (context, snapshot) {
          final tracks = (snapshot.data ?? const <VideoTrack>[]).toList()
            ..sort((a, b) => (b.height ?? 0).compareTo(a.height ?? 0));
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.stream.select_quality,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              if (snapshot.connectionState != ConnectionState.done)
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                )
              else ...[
                _row(t.stream.quality_auto, null),
                ...tracks.map((tr) => _row(_label(tr), tr)),
              ],
            ],
          );
        },
      ),
    );
  }
}
