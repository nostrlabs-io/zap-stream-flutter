import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatZapWidget extends StatefulWidget {
  final StreamEvent stream;

  /// Parsed once by the chat; decoding the receipt here on every rebuild
  /// meant a JSON parse per zap row per incoming message.
  final ZapReceipt zap;

  const ChatZapWidget({required this.stream, required this.zap, super.key});

  @override
  State<ChatZapWidget> createState() => _ChatZapWidget();
}

class _ChatZapWidget extends State<ChatZapWidget> {
  final List<GestureRecognizer> _recognizers = [];
  List<InlineSpan>? _comment;

  @override
  void dispose() {
    for (final r in _recognizers) {
      r.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final parsed = widget.zap;
    final comment = parsed.comment;
    if (comment?.isNotEmpty ?? false) {
      _comment ??= textToSpans(
        context,
        comment!,
        [],
        parsed.sender ?? "",
        showEmbeds: false,
        embedMedia: false,
        recognizers: _recognizers,
      );
    }
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: ZAP_1),
        borderRadius: DEFAULT_BR,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _zapperRowZap(context, parsed),
          if (_comment != null) RichText(text: TextSpan(children: _comment)),
        ],
      ),
    );
  }

  Widget _zapperRowZap(BuildContext context, ZapReceipt parsed) {
    if (parsed.sender != null) {
      return ProfileLoaderWidget(parsed.sender!, (ctx, state) {
        final name = ProfileNameWidget.nameFromProfile(
          state.data ?? Metadata(pubKey: parsed.sender!),
        );
        return _zapperRow(name, parsed.amountSats ?? 0, state.data);
      });
    } else {
      return _zapperRow(t.anon, parsed.amountSats ?? 0, null);
    }
  }

  Widget _zapperRow(String name, int amount, Metadata? profile) {
    return Row(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (profile != null) AvatarWidget(profile: profile, size: 24),
        RichText(
          text: t.stream.chat.zap(
            user: TextSpan(
              text: name,
              style: TextStyle(color: ZAP_1),
            ),
            amount: TextSpan(
              text: formatSats(amount),
              style: TextStyle(color: ZAP_1),
            ),
          ),
        ),
      ],
    );
  }
}
