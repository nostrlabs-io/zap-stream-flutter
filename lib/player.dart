import 'dart:developer' as developer;

import 'package:audio_service/audio_service.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/imgproxy.dart';

class PlayerState {
  final int? width;
  final int? height;
  final bool isPlaying;
  final Exception? error;

  bool get isPortrait {
    return width != null && height != null ? width! / height! < 1.0 : false;
  }

  const PlayerState({
    this.width,
    this.height,
    this.isPlaying = false,
    this.error,
  });
}

class MainPlayer extends BaseAudioHandler {
  VideoPlayerController? _controller;
  ChewieController? _chewieController;
  ValueNotifier<PlayerState?> state = ValueNotifier(null);

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

  Future<void> loadUrl(
    String url, {
    String? title,
    bool? autoPlay,
    double? aspectRatio,
    bool? isLive,
    String? placeholder,
    String? artist,
  }) async {
    if (_controller?.dataSource == url) {
      return;
    }
    try {
      developer.log("PLAYER loading $url");
      if (_chewieController != null) {
        _controller!.removeListener(updatePlayerState);
        await _controller!.dispose();
        _controller = null;
        _chewieController!.dispose();
        _chewieController = null;
      }
      state.value = null;
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(url),
        httpHeaders: Map.from({"user-agent": userAgent}),
        videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true),
      );
      await _controller!.initialize();
      _controller!.addListener(updatePlayerState);
      _chewieController = ChewieController(
        videoPlayerController: _controller!,
        autoPlay: autoPlay ?? true,
        aspectRatio: aspectRatio,
        isLive: isLive ?? false,
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
              (placeholder?.isNotEmpty ?? false)
                  ? Uri.parse(placeholder!)
                  : null,
        ),
      );
    } catch (e) {
      if (e is PlatformException && e.code == "VideoError") {
        state.value = PlayerState(
          error: Exception(t.stream.error.load_failed(url: url)),
        );
      } else {
        state.value = PlayerState(
          error: e is Exception ? e : Exception(e.toString()),
        );
      }
      developer.log("Failed to start player: ${e.toString()}");
    }
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
    state.value = PlayerState(
      width: _controller!.value.size.width.floor(),
      height: _controller!.value.size.height.floor(),
      isPlaying: isPlaying,
    );
  }
}
