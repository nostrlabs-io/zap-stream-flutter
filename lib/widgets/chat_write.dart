import 'package:collection/collection.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/reaction.dart';

class WriteMessageWidget extends StatefulWidget {
  final StreamEvent stream;

  const WriteMessageWidget({super.key, required this.stream});

  @override
  State<StatefulWidget> createState() => __WriteMessageWidget();
}

class __WriteMessageWidget extends State<WriteMessageWidget> {
  late final TextEditingController _controller;
  OverlayEntry? _entry;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus && _entry != null) {
        _entry!.remove();
        _entry = null;
      }
    });
    _controller = TextEditingController();
    _controller.addListener(() {
      if (_controller.text.endsWith("@")) {
        // start auto-complete
        _showAutoComplete();
      }
    });
  }

  @override
  void dispose() {
    if (_entry != null) {
      _entry!.remove();
    }
    _controller.dispose();
    super.dispose();
  }

  void _showAutoComplete() {
    if (_entry != null) {
      _entry!.remove();
      _entry = null;
    }

    final pos = context.findRenderObject() as RenderBox?;
    _entry = OverlayEntry(
      builder: (context) {
        return ValueListenableBuilder(
          valueListenable: _controller,
          builder: (context, v, _) {
            final selectionStart = v.text.lastIndexOf("@");
            if (selectionStart == -1) {
              _entry!.remove();
              _entry = null;
              return SizedBox();
            }
            final search = v.text.substring(selectionStart + 1, v.text.length);
            if (search.isEmpty) {
              return SizedBox();
            }
            return Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: (pos?.paintBounds.bottom ?? 0),
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    decoration: BoxDecoration(
                      color: LAYER_2,
                      borderRadius: DEFAULT_BR,
                    ),
                    child: FutureBuilder(
                      future: ndkCache.searchMetadatas(search, 5),
                      builder: (context, state) {
                        if (state.data?.isEmpty ?? true) {
                          return Text("No user found");
                        }

                        return Column(
                          spacing: 4,
                          children:
                              (state.data ?? [])
                                  .groupListsBy((m) => m.pubKey)
                                  .entries
                                  .map(
                                    (m) => GestureDetector(
                                      onTap: () {
                                        // replace search string with npub
                                        _controller
                                            .text = _controller.text.replaceRange(
                                          selectionStart,
                                          _controller.text.length,
                                          "nostr:${Nip19.encodePubKey(m.value.first.pubKey)}",
                                        );
                                        _entry!.remove();
                                        _entry = null;
                                      },
                                      child: Row(
                                        spacing: 4,
                                        children: [
                                          AvatarWidget(
                                            profile: m.value.first,
                                            size: 30,
                                          ),
                                          Expanded(
                                            child: Text(
                                              ProfileNameWidget.nameFromProfile(
                                                m.value.first,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
    Overlay.of(context).insert(_entry!);
  }

  void _showEmojiPicker() {
    if (_entry != null) {
      _entry!.remove();
      _entry = null;
    }

    final pos = context.findRenderObject() as RenderBox?;
    _entry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            Positioned(
              left: 0,
              bottom: (pos?.paintBounds.bottom ?? 0),
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                decoration: BoxDecoration(
                  color: LAYER_2,
                  borderRadius: DEFAULT_BR,
                ),
                child: EmojiPicker(
                  onEmojiSelected: (category, emoji) {
                    _controller.text = _controller.text + emoji.emoji;
                  },
                  config: emojiPickerConfig,
                ),
              ),
            ),
          ],
        );
      },
    );
    Overlay.of(context).insert(_entry!);
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
    _focusNode.unfocus();
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
                      maxLines: 3,
                      minLines: 1,
                      focusNode: _focusNode,
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
                  IconButton(
                    onPressed: () {
                      if (_entry != null) {
                        _entry!.remove();
                        _entry = null;
                      } else {
                        _showEmojiPicker();
                      }
                    },
                    icon: Icon(Icons.mood),
                  ),
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
