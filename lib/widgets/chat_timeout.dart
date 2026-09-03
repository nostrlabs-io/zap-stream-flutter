import 'package:duration/duration.dart';
import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatTimeoutWidget extends StatefulWidget {
  final Nip01Event timeout;

  const ChatTimeoutWidget({super.key, required this.timeout});

  @override
  State<ChatTimeoutWidget> createState() => _ChatTimeoutWidget();
}

class _ChatTimeoutWidget extends State<ChatTimeoutWidget> {
  /// Resolved once per row; a lookup created in build() re-ran for every
  /// visible timeout on every chat flush.
  late final Future<List<Metadata?>> _profiles = Future.wait([
    loadProfile(widget.timeout.pubKey),
    ...widget.timeout.pTags.map(loadProfile),
  ]);

  @override
  Widget build(BuildContext context) {
    final timeout = widget.timeout;
    // `expiration` is relay data; the chat filters unparseable ones out but
    // this row must not throw if one slips through
    final expiry = double.tryParse(timeout.getFirstTag("expiration") ?? "");
    final duration =
        (expiry ?? timeout.createdAt.toDouble()) - timeout.createdAt;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      child: FutureBuilder(
        future: _profiles,
        builder: (context, state) {
          final loaded = state.data ?? const [];
          Metadata profileOf(int idx, String pubkey) =>
              (idx < loaded.length ? loaded[idx] : null) ??
              Metadata(pubKey: pubkey);
          final modProfile = profileOf(0, timeout.pubKey);
          final userProfiles = [
            for (final (i, p) in timeout.pTags.indexed) profileOf(i + 1, p),
          ];

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
