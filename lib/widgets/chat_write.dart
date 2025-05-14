import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';

class WriteMessageWidget extends StatefulWidget {
  final StreamEvent stream;

  const WriteMessageWidget({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => __WriteMessageWidget();
}

class __WriteMessageWidget extends State<WriteMessageWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  Future<void> _sendMessage(BuildContext context) async {
    final login = ndk.accounts.getLoggedAccount();
    if (login == null || _controller.text.isEmpty) return;

    final chatMsg = Nip01Event(
      pubKey: login.pubkey,
      kind: 1311,
      content: _controller.text.toString(),
      tags: [
        ["a", widget.stream.aTag],
      ],
    );
    _controller.clear();
    FocusScope.of(context).unfocus();
    final res = ndk.broadcast.broadcast(nostrEvent: chatMsg);
    await res.broadcastDoneFuture;
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
                      onSubmitted: (_) => _sendMessage(context),
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
                      _sendMessage(context);
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
