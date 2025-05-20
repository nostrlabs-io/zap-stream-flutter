import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class AvatarWidget extends StatelessWidget {
  final double? size;
  final Metadata profile;

  const AvatarWidget({super.key, required this.profile, this.size});

  static Widget pubkey(String pubkey, {double? size}) {
    return ProfileLoaderWidget(pubkey, (ctx, data) {
      return AvatarWidget(
        profile: data.data ?? Metadata(pubKey: pubkey),
        size: size,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final thisSize = size ?? 40;
    return ClipOval(
      child: ProxyImg(
        url:
            profile.picture ??
            "https://nostr.api.v0l.io/api/v1/avatar/cyberpunks/${profile.pubKey}",
        resize: thisSize.ceil(),
        width: thisSize,
        height: thisSize,
      ),
    );
  }
}
