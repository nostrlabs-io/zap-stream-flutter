import 'package:collection/collection.dart';
import 'package:duration/duration.dart';
import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatTimeoutWidget extends StatelessWidget {
  final Nip01Event timeout;

  const ChatTimeoutWidget({super.key, required this.timeout});

  @override
  Widget build(BuildContext context) {
    final duration =
        double.parse(timeout.getFirstTag("expiration")!) - timeout.createdAt;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      child: FutureBuilder(
        future: ndk.metadata.loadMetadatas([
          timeout.pubKey,
          ...timeout.pTags,
        ], null),
        builder: (context, state) {
          final modProfile =
              state.data?.firstWhereOrNull((p) => p.pubKey == timeout.pubKey) ??
              Metadata(pubKey: timeout.pubKey);
          final userProfiles = timeout.pTags.map(
            (p) =>
                state.data?.firstWhereOrNull((x) => x.pubKey == p) ??
                Metadata(pubKey: p),
          );

          return Text.rich(
            style: TextStyle(color: LAYER_5),
            t.stream.chat.timeout(
              mod: TextSpan(
                text: ProfileNameWidget.nameFromProfile(modProfile),
              ),
              user: TextSpan(
                text: userProfiles
                    .map((p) => ProfileNameWidget.nameFromProfile(p))
                    .join(", "),
              ),
              time: TextSpan(
                text: Duration(seconds: duration.floor()).pretty(),
              ),
            ),
          );
        },
      ),
    );
  }
}
