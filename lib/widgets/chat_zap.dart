import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatZapWidget extends StatelessWidget {
  final StreamEvent stream;
  final Nip01Event zap;

  const ChatZapWidget({required this.stream, required this.zap, super.key});

  @override
  Widget build(BuildContext context) {
    final parsed = ZapReceipt.fromEvent(zap);
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
          if (parsed.comment?.isNotEmpty ?? false) NoteText(event: zap),
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
            user: TextSpan(text: name, style: TextStyle(color: ZAP_1)),
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
