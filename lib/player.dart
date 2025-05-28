import 'package:audio_service/audio_service.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/imgproxy.dart';

class MainPlayer extends BaseAudioHandler {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;

  ChewieController? get chewie {
    return _chewieController;
  }

  @override
  Future<void> play() async {
    await _chewieController?.play();
  }

  @override
  Future<void> pause() async {
    await _chewieController?.pause();
  }

  @override
  Future<void> stop() async {
    await _chewieController?.pause();
  }

  void loadUrl(
    String url, {
    String? title,
    bool? autoPlay,
    double? aspectRatio,
    bool? isLive,
    String? placeholder,
    String? artist,
  }) {
    if (_chewieController != null) {
      _chewieController!.dispose();
      _controller!.dispose();
    }

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(url),
      httpHeaders: Map.from({"user-agent": userAgent}),
      videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true),
    );
    _chewieController = ChewieController(
      videoPlayerController: _controller!,
      autoPlay: autoPlay ?? true,
      aspectRatio: aspectRatio,
      isLive: isLive ?? false,
      autoInitialize: true,
      allowedScreenSleep: false,
      placeholder:
          (placeholder?.isNotEmpty ?? false)
              ? ProxyImg(url: placeholder!)
              : null,
    );

    // insert media item
    mediaItem.add(
      MediaItem(
        id: url.hashCode.toString(),
        title: title ?? url,
        artist: artist,
        isLive: _chewieController!.isLive,
        artUri:
            (placeholder?.isNotEmpty ?? false) ? Uri.parse(placeholder!) : null,
      ),
    );
    _chewieController!.videoPlayerController.addListener(updatePlayerState);
  }

  void updatePlayerState() {
    final isPlaying =
        _chewieController?.videoPlayerController.value.isPlaying ?? false;

    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          if (playbackState.value.playing)
            MediaControl.pause
          else
            MediaControl.play,
          MediaControl.stop,
        ],
        playing: isPlaying,
        processingState: switch (_chewieController
            ?.videoPlayerController
            .value
            .isInitialized) {
          true => AudioProcessingState.ready,
          false => AudioProcessingState.idle,
          _ => AudioProcessingState.completed,
        },
      ),
    );
  }
}
