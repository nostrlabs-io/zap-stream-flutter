import 'package:duration/duration.dart';
import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatTimeoutWidget extends StatelessWidget {
  final Nip01Event timeout;

  const ChatTimeoutWidget({super.key, required this.timeout});

  @override
  Widget build(BuildContext context) {
    final pTags = timeout.pTags;
    final duration =
        double.parse(timeout.getFirstTag("expiration")!) - timeout.createdAt;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      child: RichText(
        text: TextSpan(
          style: TextStyle(color: LAYER_5),
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: ProfileNameWidget.pubkey(timeout.pubKey),
            ),
            TextSpan(text: " timed out "),
            ...pTags.map(
              (p) => WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: ProfileNameWidget.pubkey(p),
              ),
            ),
            TextSpan(
              text: " for ${Duration(seconds: duration.toInt()).pretty()}",
            ),
          ],
        ),
      ),
    );
  }
}
