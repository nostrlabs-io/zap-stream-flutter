import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class ProfilePage extends StatelessWidget {
  final String pubkey;

  const ProfilePage({super.key, required this.pubkey});

  @override
  Widget build(BuildContext context) {
    final hexPubkey = bech32ToHex(pubkey);
    return ProfileLoaderWidget(hexPubkey, (ctx, state) {
      final profile = state.data ?? Metadata(pubKey: hexPubkey);
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            HeaderWidget(),
            if (profile.banner != null)
              SizedBox(
                height: 140,
                width: double.maxFinite,
                child: CachedNetworkImage(
                  imageUrl: proxyImg(context, profile.banner!),
                  fit: BoxFit.cover,
                ),
              ),
            Row(
              spacing: 8,
              children: [
                AvatarWidget(profile: profile, size: 80),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileNameWidget(
                        profile: profile,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        profile.about ?? "",
                        style: TextStyle(color: LAYER_5),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            if (ndk.accounts.getPublicKey() == hexPubkey)
              Row(
                children: [
                  BasicButton.text(
                    "Logout",
                    onTap: () {
                      loginData.logout();
                      context.go("/");
                    },
                  ),
                ],
              ),
            Text(
              "Past Streams",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),

            RxFilter<Nip01Event>(
              Key("profile-streams:$hexPubkey"),
              relays: defaultRelays,
              filters: [
                Filter(kinds: [30_311], limit: 200, pTags: [hexPubkey]),
                Filter(kinds: [30_311], limit: 200, authors: [hexPubkey]),
              ],
              builder: (ctx, state) {
                return StreamGrid(
                  events: state ?? [],
                  showLive: true,
                  showEnded: true,
                  showPlanned: true,
                );
              },
            ),
          ],
        ),
      );
    });
  }
}
