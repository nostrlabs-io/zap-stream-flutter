import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
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
