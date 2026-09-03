import 'dart:async';
import 'dart:developer' as developer;
import 'dart:math';

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

  /// Playback was lost (network error, or a stall that never ended) and the
  /// player is retrying the same URL. [error] says why, when known.
  final bool reconnecting;

  bool get isPortrait {
    return width != null && height != null ? width! / height! < 1.0 : false;
  }

  const PlayerState({
    this.width,
    this.height,
    this.isPlaying = false,
    this.error,
    this.reconnecting = false,
  });

  /// Keeps the last known video size so the stream page does not flip
  /// between its portrait and landscape layouts on every reconnect.
  PlayerState reconnectingWith(Exception? error) => PlayerState(
    width: width,
    height: height,
    isPlaying: false,
    error: error,
    reconnecting: true,
  );
}

/// What [MainPlayer.loadUrl] was asked for, kept so the same stream can be
/// opened again after playback is lost.
class _LoadRequest {
  final String? title;
  final bool? autoPlay;
  final double? aspectRatio;
  final bool? isLive;
  final String? placeholder;
  final String? artist;

  const _LoadRequest({
    this.title,
    this.autoPlay,
    this.aspectRatio,
    this.isLive,
    this.placeholder,
    this.artist,
  });
}

class MainPlayer extends BaseAudioHandler {
  /// Longest wait between reconnect attempts. Viewers of a live stream want
  /// to be back quickly once the network returns, so this stays short.
  static const _maxRetryDelay = Duration(seconds: 10);

  /// How long the player may sit buffering before it is assumed stuck. Mobile
  /// networks can hang a connection without ever failing it, and a live
  /// stream that has buffered this long is far behind the edge anyway.
  static const _stallTimeout = Duration(seconds: 20);

  String? _url;
  _LoadRequest _request = const _LoadRequest();
  String? _selectedVideoTrackId;
  VideoPlayerController? _controller;
  ChewieController? _chewieController;
  bool _loading = false;
  bool _reconnecting = false;

  /// Whether the current controller has played at all: the stall watchdog
  /// stays off during the first fill so a slow start is not cut short.
  bool _hasPlayed = false;
  int _retries = 0;
  Timer? _retryTimer;
  Timer? _stallTimer;
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
          final url = _url;
          if (url == null) break;
          if (_retryTimer != null) {
            // the viewer is looking again and the network has probably
            // changed under us: do not make them wait out the backoff
            _retryTimer?.cancel();
            _retryTimer = null;
            await _open(url);
          } else if (_controller == null && !_loading && !_reconnecting) {
            await _open(url);
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
    _stopReconnecting();
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

  /// Drops the platform player. [clearState] is false while reconnecting so
  /// the page keeps showing the reconnect state (and its layout) instead of
  /// flashing back to an empty player between attempts.
  Future<void> _teardown({bool clearState = true}) async {
    final controller = _controller;
    final chewie = _chewieController;
    _controller = null;
    _chewieController = null;
    _stallTimer?.cancel();
    _stallTimer = null;
    if (clearState) state.value = null;
    controller?.removeListener(updatePlayerState);
    chewie?.dispose();
    await controller?.dispose();
  }

  void _stopReconnecting() {
    _retryTimer?.cancel();
    _retryTimer = null;
    _reconnecting = false;
    _retries = 0;
  }

  /// Playback of [url] was lost mid-stream. Drops the dead platform player
  /// (chewie would otherwise sit on its error icon) and retries with backoff.
  ///
  /// Neither ExoPlayer nor AVPlayer recovers on its own: ExoPlayer gives up
  /// after a few retries of one segment, which a cell handover or a tunnel
  /// easily outlasts, and then reports a fatal error; AVPlayer can stall
  /// without ever reporting one.
  void _onPlaybackLost(String url, Exception error) {
    if (_url != url || _reconnecting) return;
    _reconnecting = true;
    developer.log("PLAYER lost playback of $url: $error");
    // called from the controller's own listener: leave the notification
    // before disposing it
    scheduleMicrotask(() async {
      if (_url != url) return;
      await _teardown(clearState: false);
      _scheduleReconnect(url, error);
    });
  }

  void _scheduleReconnect(String url, Exception? error) {
    if (_url != url || _retryTimer != null) return;
    _reconnecting = true;
    final delay = Duration(
      seconds: min(1 << min(_retries, 4), _maxRetryDelay.inSeconds),
    );
    _retries++;
    developer.log(
      "PLAYER reconnecting to $url in ${delay.inSeconds}s (attempt $_retries)",
    );
    state.value = (state.value ?? const PlayerState()).reconnectingWith(error);
    // keeps the media session (and with it the Android foreground service)
    // alive while playback is away, so a background reconnect is not killed
    playbackState.add(
      playbackState.value.copyWith(
        processingState: AudioProcessingState.buffering,
      ),
    );
    _retryTimer = Timer(delay, () {
      _retryTimer = null;
      if (_url != url) return;
      _open(url);
    });
  }

  /// Starts or clears the stall watchdog from the controller's current
  /// buffering flag. User pauses do not set it, so a long buffering spell
  /// means the network went quiet, not that the viewer did.
  void _watchStall(VideoPlayerController controller, String url) {
    _hasPlayed = _hasPlayed || controller.value.isPlaying;
    if (!controller.value.isBuffering || !_hasPlayed) {
      _stallTimer?.cancel();
      _stallTimer = null;
      return;
    }
    _stallTimer ??= Timer(_stallTimeout, () {
      _stallTimer = null;
      if (_controller != controller || _url != url) return;
      if (!controller.value.isBuffering) return;
      _onPlaybackLost(
        url,
        Exception("stalled for ${_stallTimeout.inSeconds}s"),
      );
    });
  }

  ChewieController? get chewie {
    return _chewieController;
  }

  /// True while a URL is being opened
  bool get isLoading => _loading;

  /// True from losing playback until the same URL is playing again
  bool get isReconnecting => _reconnecting;

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
    _request = _LoadRequest(
      title: title,
      autoPlay: autoPlay,
      aspectRatio: aspectRatio,
      isLive: isLive,
      placeholder: placeholder,
      artist: artist,
    );
    if (_url == url && (_controller != null || _loading || _reconnecting)) {
      return;
    }
    if (_url != url) _stopReconnecting();
    await _open(url);
  }

  /// Opens [url] with the last [loadUrl] arguments, replacing whatever is
  /// loaded. Also the path every reconnect attempt takes.
  Future<void> _open(String url) async {
    final request = _request;
    final title = request.title;
    final autoPlay = request.autoPlay;
    final aspectRatio = request.aspectRatio;
    final isLive = request.isLive;
    final placeholder = request.placeholder;
    final artist = request.artist;
    developer.log("PLAYER loading $url");
    // Set before anything awaits: a page released while we initialise, or a
    // failed load, must see what was asked for rather than the previous URL.
    _url = url;
    _selectedVideoTrackId = null;
    _hasPlayed = false;
    _loading = true;
    try {
      await _teardown(clearState: !_reconnecting);
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
      if (_reconnecting) developer.log("PLAYER reconnected to $url");
      _reconnecting = false;
      _retries = 0;
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
      developer.log("Failed to start player: ${e.toString()}");
      // Opening fails on the go for the same transient reasons playback is
      // lost, so keep trying rather than leaving the viewer on an error.
      final error = e is PlatformException && e.code == "VideoError"
          ? Exception(t.stream.error.load_failed(url: url))
          : e is Exception
          ? e
          : Exception(e.toString());
      _scheduleReconnect(url, error);
    } finally {
      if (_url == url) _loading = false;
    }
  }

  void updatePlayerState() {
    final controller = _controller;
    final url = _url;
    if (controller != null && url != null) {
      if (controller.value.hasError) {
        _onPlaybackLost(url, Exception(controller.value.errorDescription));
        return;
      }
      _watchStall(controller, url);
    }
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
