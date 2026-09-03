import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';

class MainVideoPlayerWidget extends StatefulWidget {
  final String url;
  final String? title;
  final String? placeholder;
  final double? aspectRatio;
  final bool? autoPlay;
  final bool? isLive;

  const MainVideoPlayerWidget({
    super.key,
    required this.url,
    this.title,
    this.placeholder,
    this.aspectRatio,
    this.autoPlay,
    this.isLive,
  });

  @override
  State<StatefulWidget> createState() => _MainVideoPlayerWidget();
}

class _MainVideoPlayerWidget extends State<MainVideoPlayerWidget> {
  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MainVideoPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.url != widget.url) {
      mainPlayer.release(oldWidget.url);
      _load();
    }
  }

  void _load() {
    mainPlayer.loadUrl(
      widget.url,
      title: widget.title,
      placeholder: widget.placeholder,
      aspectRatio: widget.aspectRatio,
      autoPlay: widget.autoPlay,
      isLive: widget.isLive,
      artist: "zap.stream",
    );
  }

  @override
  void dispose() {
    // only stops playback if no other page has taken the player over
    mainPlayer.release(widget.url);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: mainPlayer.state,
      builder: (context, state, _) {
        final chewie = mainPlayer.chewie;
        final owned = mainPlayer.url == widget.url;
        // stopped from the media notification: the player is gone but the
        // page is still here, so offer a way to start it again instead of
        // an endless spinner
        final stopped = chewie == null && owned && !mainPlayer.isLoading;
        final innerWidget = chewie != null && owned
            ? Chewie(controller: chewie)
            : Center(
                child: state?.error != null
                    ? Text(
                        state!.error.toString(),
                        style: TextStyle(color: WARNING),
                      )
                    : stopped
                    ? IconButton(
                        iconSize: 64,
                        onPressed: _load,
                        icon: Icon(Icons.play_circle_outline),
                      )
                    : CircularProgressIndicator(),
              );
        if (state?.isPortrait == true) {
          return innerWidget;
        }
        return AspectRatio(aspectRatio: 16 / 9, child: innerWidget);
      },
    );
  }
}
