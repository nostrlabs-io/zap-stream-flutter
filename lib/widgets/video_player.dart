import 'package:chewie/chewie.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/main.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String url;
  final String? placeholder;
  final double? aspectRatio;
  final bool? autoPlay;

  const VideoPlayerWidget({
    super.key,
    required this.url,
    this.placeholder,
    this.aspectRatio,
    this.autoPlay,
  });

  @override
  State<StatefulWidget> createState() => _VideoPlayerWidget();
}

class _VideoPlayerWidget extends State<VideoPlayerWidget> {
  late final ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    final controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
      httpHeaders: Map.from({"user-agent": userAgent}),
    );
    _chewieController = ChewieController(
      videoPlayerController: controller,
      autoPlay: widget.autoPlay ?? true,
      autoInitialize: true,
      placeholder:
          (widget.placeholder?.isNotEmpty ?? false)
              ? ProxyImg(url: widget.placeholder!)
              : null,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(controller: _chewieController);
  }
}
