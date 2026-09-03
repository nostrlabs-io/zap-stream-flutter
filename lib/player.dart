import 'dart:developer' as developer;

import 'package:audio_service/audio_service.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_platform_interface/video_player_platform_interface.dart'
    show VideoPlayerPlatform, VideoTrack;
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/widgets/img.dart';

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
  String? _url;
  String? _selectedVideoTrackId;
  VideoPlayerController? _controller;
  ChewieController? _chewieController;
  bool _loading = false;
  ValueNotifier<PlayerState?> state = ValueNotifier(null);

  MainPlayer() {
    AppLifecycleListener(onStateChange: _onStateChanged);
  }

  void _onStateChanged(AppLifecycleState state) async {
    developer.log(state.name);
    switch (state) {
      case AppLifecycleState.detached:
        {
          await dispose();
          break;
        }
      case AppLifecycleState.resumed:
        {
          if (_controller == null && _url != null) {
            await loadUrl(_url!);
          }
          break;
        }
      default:
        {}
    }
  }

  /// Drops the platform player. Keeps [_url] so [_onStateChanged] can bring
  /// playback back when the app resumes after the OS or the media
  /// notification stopped it.
  Future<void> dispose() async {
    await _teardown();
    await super.stop();
  }

  /// The player is a singleton shared by every stream page. When a page goes
  /// away it must only stop playback it still owns: navigating from one
  /// stream straight to another loads the new URL before the old page is
  /// disposed, and the old page must not kill the new stream.
  Future<void> release(String url) async {
    if (_url != url) return;
    _url = null;
    await dispose();
  }

  Future<void> _teardown() async {
    final controller = _controller;
    final chewie = _chewieController;
    _controller = null;
    _chewieController = null;
    state.value = null;
    controller?.removeListener(updatePlayerState);
    chewie?.dispose();
    await controller?.dispose();
  }

  ChewieController? get chewie {
    return _chewieController;
  }

  /// True while a URL is being opened
  bool get isLoading => _loading;

  /// URL currently loaded, which is not the stream URL of the event once the
  /// viewer has picked a rendition.
  String? get url {
    return _url;
  }

  /// Whether the platform can list and pick the renditions of an adaptive
  /// stream itself. Web cannot, so the picker has nothing to offer there.
  bool get supportsVideoTracks =>
      VideoPlayerPlatform.instance.isVideoTrackSupportAvailable();

  /// Id of the rendition the viewer picked, or null while the player is
  /// choosing for itself. Tracked here because the platform reports the track
  /// that happens to be playing, which under ABR is not a choice anyone made.
  String? get selectedVideoTrackId => _selectedVideoTrackId;

  /// Track selection is implemented in the platform packages but not wrapped
  /// by `video_player`, so the only route to it is the platform interface,
  /// which needs the player id the wrapper marks visible-for-testing. Drop the
  /// ignores once the wrapper exposes video tracks itself.
  Future<List<VideoTrack>> videoTracks() async {
    final controller = _controller;
    if (controller == null ||
        !controller.value.isInitialized ||
        !supportsVideoTracks) {
      return const [];
    }
    try {
      return await VideoPlayerPlatform.instance.getVideoTracks(
        // ignore: invalid_use_of_visible_for_testing_member
        controller.playerId,
      );
    } catch (e) {
      developer.log("Failed to list video tracks: $e");
      return const [];
    }
  }

  /// Picks a rendition, or restores adaptive selection when [track] is null.
  /// The switch happens inside the player, so playback is not interrupted.
  Future<void> selectVideoTrack(VideoTrack? track) async {
    final controller = _controller;
    if (controller == null || !supportsVideoTracks) return;
    try {
      await VideoPlayerPlatform.instance.selectVideoTrack(
        // ignore: invalid_use_of_visible_for_testing_member
        controller.playerId,
        track,
      );
      _selectedVideoTrackId = track?.id;
    } catch (e) {
      developer.log("Failed to select video track: $e");
    }
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
    await dispose();
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
    if (_url == url && (_controller != null || _loading)) {
      return;
    }
    developer.log("PLAYER loading $url");
    // Set before anything awaits: a page released while we initialise, or a
    // failed load, must see what was asked for rather than the previous URL.
    _url = url;
    _selectedVideoTrackId = null;
    _loading = true;
    try {
      await _teardown();
      final controller = VideoPlayerController.networkUrl(
        Uri.parse(url),
        httpHeaders: Map.from({"user-agent": userAgent}),
        videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true),
      );
      await controller.initialize();
      if (_url != url) {
        // superseded (another stream, or released) while initialising
        await controller.dispose();
        return;
      }
      _controller = controller;
      controller.addListener(updatePlayerState);
      _chewieController = ChewieController(
        videoPlayerController: controller,
        autoPlay: autoPlay ?? true,
        aspectRatio: aspectRatio,
        isLive: isLive ?? false,
        allowedScreenSleep: false,
        placeholder: (placeholder?.isNotEmpty ?? false)
            ? Img(url: placeholder!)
            : null,
      );

      // insert media item
      mediaItem.add(
        MediaItem(
          id: url.hashCode.toString(),
          title: title ?? url,
          artist: artist,
          isLive: _chewieController!.isLive,
          artUri: (placeholder?.isNotEmpty ?? false)
              ? Uri.parse(placeholder!)
              : null,
        ),
      );
      // Update player state immediately after initialization
      updatePlayerState();
    } catch (e) {
      if (_url != url) return;
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
    } finally {
      if (_url == url) _loading = false;
    }
  }

  void updatePlayerState() {
    final isPlaying =
        _chewieController?.videoPlayerController.value.isPlaying ?? false;

    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          if (isPlaying) MediaControl.pause else MediaControl.play,
          MediaControl.stop,
        ],
        playing: isPlaying,
        androidCompactActionIndices: [1],
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

    if (_controller?.value.isInitialized == true &&
        _controller!.value.size != Size.zero) {
      state.value = PlayerState(
        width: _controller!.value.size.width.floor(),
        height: _controller!.value.size.height.floor(),
        isPlaying: isPlaying,
      );
    }
  }
}
