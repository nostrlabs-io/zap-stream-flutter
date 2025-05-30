import 'dart:async';
import 'dart:developer' as developer;

import 'package:apivideo_live_stream/apivideo_live_stream.dart';
import 'package:collection/collection.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wakelock_plus/wakelock_plus.dart';
import 'package:zap_stream_flutter/api.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/chat.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/stream_config.dart';

Future<bool?> showExitStreamDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    useRootNavigator: false,
    builder: (context) {
      return Dialog(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              Text("Exit live stream?", style: TextStyle(fontSize: 24)),
              Row(
                spacing: 16,
                children: [
                  Flexible(
                    child: BasicButton.text(
                      "Yes, stop stream",
                      onTap: (context) => context.pop(true),
                    ),
                  ),
                  Flexible(
                    child: BasicButton.text(
                      "No",
                      onTap: (context) => context.pop(false),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<StatefulWidget> createState() => _LivePage();
}

class _LivePage extends State<LivePage>
    implements ApiVideoLiveStreamEventsListener {
  late final ApiVideoLiveStreamController _controller;
  late final ZapStreamApi _api;
  AccountInfo? _account;
  late final Timer _accountTimer;
  bool _streaming = false;

  Future<void> _reloadAccount() async {
    final info = await _api.getAccountInfo();
    setState(() {
      _account = info;
    });
  }

  @override
  void initState() {
    _controller = ApiVideoLiveStreamController(
      initialAudioConfig: AudioConfig(),
      initialVideoConfig: VideoConfig.withDefaultBitrate(),
    );
    _controller.initialize();
    _api = ZapStreamApi.instance();
    _reloadAccount();
    _accountTimer = Timer.periodic(Duration(seconds: 30), (_) async {
      await _reloadAccount();
    });
    _controller.addEventsListener(this);
    WakelockPlus.enable();

    super.initState();
  }

  @override
  void dispose() {
    _accountTimer.cancel();
    _controller.stopStreaming();
    _controller.dispose();
    WakelockPlus.disable();
    super.dispose();
  }

  void _showError(BuildContext context, String msg, {Exception? error}) {
    if (error != null) {
      developer.log(error.toString());
    }
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: WARNING,
        content: Text(msg, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }

  String _calcTimeRemaining(IngestEndpoint endpoint, double balance) {
    if (endpoint.cost.rate == 0) {
      return "";
    }
    final units = balance / endpoint.cost.rate;
    if (endpoint.cost.unit == "min") {
      return Duration(
        seconds: (units * 60).clamp(0, double.infinity).floor(),
      ).pretty(abbreviated: true);
    }
    return "0s";
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (_streaming) {
          final go = await showExitStreamDialog(context);
          if (context.mounted) {
            if (go == true) {
              context.go("/");
            }
          }
        } else {
          context.go("/");
        }
      },
      child: ValueListenableBuilder(
        valueListenable: loginData,
        builder: (context, state, _) {
          final endpoint = _account?.endpoints.firstWhereOrNull(
            (e) => e.name == state?.streamEndpoint,
          );
          final balance = _account?.balance ?? 0;

          return RxFilter<Nip01Event>(
            Key("live-stream"),
            filters: [
              Filter(
                kinds: [30_311],
                limit: 100,
                pTags: [loginData.value!.pubkey],
              ),
              Filter(
                kinds: [30_311],
                limit: 100,
                authors: [loginData.value!.pubkey],
              ),
            ],
            builder: (context, streamState) {
              final ev = streamState
                  ?.sortedBy((e) => e.createdAt)
                  .firstWhereOrNull((e) => e.getFirstTag("status") == "live");

              final stream = ev != null ? StreamEvent(ev) : null;
              return Stack(
                children: [
                  ApiVideoCameraPreview(controller: _controller),
                  Positioned(
                    top: 10,
                    left: 10,
                    width: mq.size.width - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PillWidget(
                          color: LAYER_2,
                          child: Row(
                            spacing: 4,
                            children: [
                              Text(t.full_amount_sats(n: balance)),
                              if (endpoint != null)
                                Text(
                                  t.live.balance_left(
                                    n: endpoint.cost.rate,
                                    time: _calcTimeRemaining(endpoint, balance),
                                  ),
                                  style: TextStyle(color: LAYER_5),
                                ),
                            ],
                          ),
                        ),
                        if ((stream?.info.participants ?? 0) > 0)
                          PillWidget(
                            color: LAYER_2,
                            child: Text(
                              t.viewers(n: stream?.info.participants ?? 0),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (_account != null)
                    Positioned(
                      width: mq.size.width,
                      bottom: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton.filled(
                            iconSize: 40,
                            style: ButtonStyle(
                              iconColor: WidgetStateColor.resolveWith(
                                (_) => FONT_COLOR,
                              ),
                              backgroundColor: WidgetStateColor.resolveWith(
                                (_) => LAYER_3,
                              ),
                            ),
                            onPressed: () {
                              _controller.switchCamera();
                            },
                            icon: Icon(Icons.cameraswitch_rounded),
                          ),
                          Spacer(),
                          if (_account != null && !_account!.tos.accepted)
                            Column(
                              spacing: 16,
                              children: [
                                BasicButton.text(
                                  "Read TOS",
                                  onTap: (context) {
                                    if (_account?.tos.link != null) {
                                      launchUrl(Uri.parse(_account!.tos.link!));
                                    }
                                  },
                                ),
                                BasicButton.text(
                                  t.live.accept_tos,
                                  color: WARNING,
                                  onTap: (context) {
                                    _api
                                        .acceptTos()
                                        .then((_) {
                                          _reloadAccount();
                                        })
                                        .catchError((e) {
                                          _showError(
                                            context,
                                            e.toString(),
                                            error: e,
                                          );
                                        });
                                  },
                                ),
                              ],
                            )
                          else if (state?.streamEndpoint == null ||
                              endpoint == null)
                            BasicButton.text(
                              t.live.configure_stream,
                              color: WARNING,
                            ),
                          if (endpoint != null)
                            IconButton.filled(
                              iconSize: 40,
                              style: ButtonStyle(
                                iconColor: WidgetStateColor.resolveWith(
                                  (_) => WARNING,
                                ),
                                backgroundColor: WidgetStateColor.resolveWith(
                                  (_) => LAYER_3,
                                ),
                              ),
                              onPressed: () async {
                                if (_streaming) {
                                  _controller.stopStreaming().catchError((e) {
                                    _showError(context, e.toString(), error: e);
                                  });
                                } else {
                                  _controller
                                      .startStreaming(
                                        streamKey: endpoint.key,
                                        url: endpoint.url,
                                      )
                                      .catchError((e) {
                                        _showError(
                                          context,
                                          t.live.error.start_failed,
                                          error: e,
                                        );
                                      });
                                }
                              },
                              icon: Icon(
                                _streaming ? Icons.stop : Icons.circle,
                              ),
                            ),
                          Spacer(),
                          IconButton.filled(
                            iconSize: 40,
                            style: ButtonStyle(
                              iconColor: WidgetStateColor.resolveWith(
                                (_) => FONT_COLOR,
                              ),
                              backgroundColor: WidgetStateColor.resolveWith(
                                (_) => LAYER_3,
                              ),
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                constraints: BoxConstraints.expand(),
                                builder: (context) {
                                  return StreamConfigWidget(
                                    api: _api,
                                    account: _account!,
                                    hideEndpointConfig: _streaming,
                                  );
                                },
                              ).then((_) {
                                _reloadAccount();
                              });
                            },
                            icon: Icon(Icons.settings),
                          ),
                        ],
                      ),
                    ),
                  if (_account != null && stream != null)
                    Positioned(
                      bottom: 80,
                      child: Container(
                        width: mq.size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        constraints: BoxConstraints(
                          maxHeight: mq.size.height * 0.3,
                          minHeight: 200,
                        ),
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.white.withAlpha(255),
                                Colors.white.withAlpha(200),
                                Colors.white.withAlpha(0),
                              ],
                              stops: [0.0, 0.7, 1.0],
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.dstIn,
                          child: ChatWidget(
                            stream: stream,
                            showGoals: false,
                            showTopZappers: false,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  @override
  get onConnectionFailed => (s) {
    developer.log(s, name: "onConnectionFailed");
    _showError(context, t.live.error.connection_error);
  };

  @override
  get onConnectionSuccess => () {
    developer.log("Connected", name: "onConnectionSuccess");
    setState(() {
      _streaming = true;
    });
  };

  @override
  get onDisconnection => () {
    developer.log("Disconnected", name: "onDisconnection");
    setState(() {
      _streaming = false;
    });
  };

  @override
  get onError => (e) {
    developer.log(e.toString(), name: "onError");
    if (e is PlatformException) {
      if (e.details is String &&
          (e.details as String).contains("Connection error")) {
        _showError(context, t.live.error.connection_error, error: e);
      }
    }
  };

  @override
  get onVideoSizeChanged => (s) {
    developer.log(s.toString(), name: "onVideoSizeChanged");
  };
}
