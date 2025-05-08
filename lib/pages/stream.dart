import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/chat.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class StreamPage extends StatefulWidget {
  final StreamEvent stream;

  const StreamPage({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => _StreamPage();
}

class _StreamPage extends State<StreamPage> {
  VideoPlayerController? _controller;

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
        await _controller!.play();
        setState(() {
          // nothing
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
              _controller != null
                  ? VideoPlayer(_controller!)
                  : Container(color: LAYER_1),
        ),
        Text(
          widget.stream.info.title ?? "",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileWidget.pubkey(widget.stream.info.host),
            PillWidget(
              color: LAYER_1,
              child: Text(
                "${widget.stream.info.participants} viewers",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        Expanded(child: ChatWidget(stream: widget.stream)),
      ],
    );
  }
}
