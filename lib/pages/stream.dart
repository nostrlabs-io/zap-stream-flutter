import 'package:cached_network_image/cached_network_image.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/chat.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/zap.dart';

class StreamPage extends StatefulWidget {
  final StreamEvent stream;

  const StreamPage({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => _StreamPage();
}

class _StreamPage extends State<StreamPage> {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();

    WakelockPlus.enable();
    final url = widget.stream.info.stream;

    if (url != null) {
      if (_controller != null) {
        _controller!.dispose();
      }
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(url),
        httpHeaders: Map.from({"user-agent": userAgent}),
      );
      () async {
        await _controller!.initialize();
        setState(() {
          _chewieController = ChewieController(
            videoPlayerController: _controller!,
            aspectRatio: 16 / 9,
            autoPlay: true,
            placeholder:
                (widget.stream.info.image?.isNotEmpty ?? false)
                    ? CachedNetworkImage(
                      imageUrl: proxyImg(context, widget.stream.info.image!),
                    )
                    : null,
          );
        });
      }();
    }
  }

  @override
  void dispose() {
    super.dispose();
    WakelockPlus.disable();
    if (_controller != null) {
      _controller!.dispose();
      _controller = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child:
              _chewieController != null
                  ? Chewie(controller: _chewieController!)
                  : Container(
                    color: LAYER_1,
                    child:
                        (widget.stream.info.image?.isNotEmpty ?? false)
                            ? CachedNetworkImage(
                              imageUrl: proxyImg(
                                context,
                                widget.stream.info.image!,
                              ),
                            )
                            : null,
                  ),
        ),
        Text(
          widget.stream.info.title ?? "",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileWidget.pubkey(widget.stream.info.host),
            Row(
              spacing: 8,
              children: [
                BasicButton(
                  Row(children: [Icon(Icons.bolt, size: 14), Text("Zap")]),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  decoration: BoxDecoration(
                    color: PRIMARY_1,
                    borderRadius: DEFAULT_BR,
                  ),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      constraints: BoxConstraints.expand(),
                      builder: (ctx) {
                        return ZapWidget(
                          pubkey: widget.stream.info.host,
                          target: widget.stream.event,
                          zapTags:
                              // tag goal onto zap request
                              widget.stream.info.goal != null
                                  ? [
                                    ["e", widget.stream.info.goal!],
                                  ]
                                  : null,
                        );
                      },
                    );
                  },
                ),
                if (widget.stream.info.participants != null)
                  PillWidget(
                    color: LAYER_1,
                    child: Text(
                      "${widget.stream.info.participants} viewers",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
        Expanded(child: ChatWidget(stream: widget.stream)),
      ],
    );
  }
}
