import 'dart:developer' as developer;

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatWidget extends StatelessWidget {
  final StreamEvent stream;

  const ChatWidget({super.key, required this.stream});

  @override
  Widget build(BuildContext context) {
    return RxFilter<Nip01Event>(
      filters: [
        Filter(kinds: [1311, 9735], limit: 200, aTags: [stream.aTag]),
      ],
      builder: (ctx, state) {
        return Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TopZappersWidget(events: state ?? []),
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      (state ?? [])
                          .sortedBy((c) => c.createdAt)
                          .map(
                            (c) => switch (c.kind) {
                              1311 => ChatMessageWidget(stream: stream, msg: c),
                              9735 => _ChatZapWidget(stream: stream, zap: c),
                              _ => SizedBox.shrink(),
                            },
                          )
                          .toList(),
                ),
              ),
            ),
            if (stream.info.status == StreamStatus.live)
              WriteMessageWidget(stream: stream),
            if (stream.info.status == StreamStatus.ended)
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 8),
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: DEFAULT_BR),
                child: Text(
                  "STREAM ENDED",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _TopZappersWidget extends StatelessWidget {
  final List<Nip01Event> events;

  const _TopZappersWidget({required this.events});

  @override
  Widget build(BuildContext context) {
    final topZaps =
        events
            .where((e) => e.kind == 9735)
            .map((e) => ZapReceipt.fromEvent(e))
            .fold(<String, int>{}, (acc, e) {
              if (e.sender != null) {
                acc[e.sender!] = (acc[e.sender!] ?? 0) + e.amountSats!;
              }
              return acc;
            })
            .entries
            .sortedBy((e) => e.value)
            .reversed
            .take(10)
            .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      primary: false,
      child: Row(
        spacing: 10,
        children:
            topZaps
                .map(
                  (v) => Container(
                    padding: EdgeInsets.only(left: 4, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: DEFAULT_BR,
                      border: Border.all(color: LAYER_3),
                    ),
                    child: ProfileWidget.pubkey(
                      v.key,
                      showName: false,
                      size: 20,
                      spacing: 0,
                      children: [
                        Icon(Icons.bolt, color: ZAP_1),
                        Text(formatSats(v.value)),
                      ],
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}

class _ChatZapWidget extends StatelessWidget {
  final StreamEvent stream;
  final Nip01Event zap;

  const _ChatZapWidget({required this.stream, required this.zap});

  @override
  Widget build(BuildContext context) {
    final parsed = ZapReceipt.fromEvent(zap);
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: ZAP_1),
        borderRadius: DEFAULT_BR,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _zapperRowZap(parsed),
          if (parsed.comment?.isNotEmpty ?? false) Text(parsed.comment!),
        ],
      ),
    );
  }

  Widget _zapperRowZap(ZapReceipt parsed) {
    if (parsed.sender != null) {
      return ProfileLoaderWidget(parsed.sender!, (ctx, state) {
        final name = ProfileNameWidget.nameFromProfile(
          state.data ?? Metadata(pubKey: parsed.sender!),
        );
        return _zapperRow(name, parsed.amountSats ?? 0, state.data);
      });
    } else {
      return _zapperRow("Anon", parsed.amountSats ?? 0, null);
    }
  }

  Widget _zapperRow(String name, int amount, Metadata? profile) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(color: ZAP_1),
            children: [
              WidgetSpan(
                child: Icon(Icons.bolt, color: ZAP_1),
                alignment: PlaceholderAlignment.middle,
              ),
              if (profile != null)
                WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: AvatarWidget(profile: profile, size: 20),
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
              TextSpan(text: name),
              TextSpan(text: " zapped ", style: TextStyle(color: FONT_COLOR)),
              TextSpan(text: formatSats(amount)),
              TextSpan(text: " sats", style: TextStyle(color: FONT_COLOR)),
            ],
          ),
        ),
      ],
    );
  }
}

class ChatMessageWidget extends StatelessWidget {
  final StreamEvent stream;
  final Nip01Event msg;

  const ChatMessageWidget({super.key, required this.stream, required this.msg});

  @override
  Widget build(BuildContext context) {
    return ProfileLoaderWidget(msg.pubKey, (ctx, state) {
      final profile = state.data ?? Metadata(pubKey: msg.pubKey);
      return RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: AvatarWidget(profile: profile, size: 24),
              alignment: PlaceholderAlignment.middle,
            ),
            TextSpan(text: " "),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: ProfileNameWidget(
                profile: profile,
                style: TextStyle(
                  color:
                      msg.pubKey == stream.info.host ? PRIMARY_1 : SECONDARY_1,
                ),
              ),
            ),
            TextSpan(text: " "),
            TextSpan(text: msg.content, style: TextStyle(color: FONT_COLOR)),
          ],
        ),
      );
    });
  }
}

class WriteMessageWidget extends StatefulWidget {
  final StreamEvent stream;

  const WriteMessageWidget({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => _WriteMessageWidget();
}

class _WriteMessageWidget extends State<WriteMessageWidget> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _sendMessage() async {
    final login = ndk.accounts.getLoggedAccount();
    if (login == null) return;

    final chatMsg = Nip01Event(
      pubKey: login.pubkey,
      kind: 1311,
      content: _controller.text,
      tags: [
        ["a", widget.stream.aTag],
      ],
    );
    developer.log(chatMsg.toString());
    final res = ndk.broadcast.broadcast(nostrEvent: chatMsg);
    await res.broadcastDoneFuture;
    _controller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    final canSign = ndk.accounts.canSign;
    final isLogin = ndk.accounts.isLoggedIn;

    return Container(
      margin: EdgeInsets.fromLTRB(4, 8, 4, 0),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: LAYER_2, borderRadius: DEFAULT_BR),
      child:
          canSign
              ? Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      onSubmitted: (_) => _sendMessage(),
                      decoration: InputDecoration(
                        labelText: "Write message",
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        labelStyle: TextStyle(color: LAYER_4, fontSize: 14),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  //IconButton(onPressed: () {}, icon: Icon(Icons.mood)),
                  IconButton(
                    onPressed: () {
                      _sendMessage();
                    },
                    icon: Icon(Icons.send),
                  ),
                ],
              )
              : Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Text(
                      isLogin
                          ? "Can't write messages with npub login"
                          : "Please login to send messages",
                    ),
                  ],
                ),
              ),
    );
  }
}
