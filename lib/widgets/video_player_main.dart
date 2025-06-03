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
    mainPlayer.loadUrl(
      widget.url,
      title: widget.title,
      placeholder: widget.placeholder,
      aspectRatio: widget.aspectRatio,
      autoPlay: widget.autoPlay,
      isLive: widget.isLive,
      artist: "zap.stream",
    );

    super.initState();
  }

  @override
  void dispose() {
    mainPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: mainPlayer.state,
      builder: (context, state, _) {
        final innerWidget =
            mainPlayer.chewie != null
                ? Chewie(controller: mainPlayer.chewie!)
                : Center(
                  child:
                      state?.error != null
                          ? Text(
                            state!.error.toString(),
                            style: TextStyle(color: WARNING),
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
