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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            reverse: true,
            child: RxFilter<Nip01Event>(
              filter: Filter(kinds: [1311], limit: 200, aTags: [stream.aTag]),
              builder: (ctx, state) {
                return Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                      (state ?? [])
                          .sortedBy((c) => c.createdAt)
                          .map((c) => ChatMessageWidget(stream: stream, msg: c))
                          .toList(),
                );
              },
            ),
          ),
        ),
        WriteMessageWidget(stream: stream),
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
            WidgetSpan(child: AvatarWidget(profile: profile, size: 20)),
            TextSpan(text: " "),
            TextSpan(
              text: ProfileNameWidget.nameFromProfile(profile),
              style: TextStyle(
                color: msg.pubKey == stream.info.host ? PRIMARY_1 : SECONDARY_1,
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
    final isLogin = ndk.accounts.isLoggedIn;

    return Container(
      margin: EdgeInsets.fromLTRB(4, 8, 4, 0),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: LAYER_2, borderRadius: DEFAULT_BR),
      child:
          isLogin
              ? Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: "Write message",
                        contentPadding: EdgeInsets.symmetric(vertical: 4),
                        labelStyle: TextStyle(color: LAYER_4, fontSize: 14),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.mood)),
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
                child: Row(children: [Text("Please login to send messages")]),
              ),
    );
  }
}
