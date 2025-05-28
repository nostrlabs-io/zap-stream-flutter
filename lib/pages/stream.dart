import 'dart:developer' as developer;

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/chat.dart';
import 'package:zap_stream_flutter/widgets/notifications_button.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/stream_info.dart';
import 'package:zap_stream_flutter/widgets/video_player.dart';
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

  bool isWidgetVisible(BuildContext context) {
    final router = GoRouter.of(context);
    final currentConfiguration = router.routerDelegate.currentConfiguration;
    final match = currentConfiguration.matches.lastOrNull;
    final lastMatch =
        match is ShellRouteMatch ? match.matches.lastOrNull : match;
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
        return _buildStream(context, stream);
      },
    );
  }

  Widget _buildStream(BuildContext context, StreamEvent stream) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child:
              (stream.info.stream != null && !_offScreen)
                  ? VideoPlayerWidget(
                    url: stream.info.stream!,
                    placeholder: stream.info.image,
                    aspectRatio: 16 / 9,
                    isLive: true,
                  )
                  : (stream.info.image?.isNotEmpty ?? false)
                  ? ProxyImg(url: stream.info.image)
                  : Container(decoration: BoxDecoration(color: LAYER_1)),
        ),
        if (stream.info.title?.isNotEmpty ?? false)
          Text(
            stream.info.title!,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ProfileWidget.pubkey(
          stream.info.host,
          children: [
            NotificationsButtonWidget(stream: widget.stream),
            BasicButton(
              Row(
                children: [Icon(Icons.bolt, size: 14), Text(t.zap.button_zap)],
              ),
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
        Expanded(child: ChatWidget(stream: stream)),
      ],
    );
  }
}
