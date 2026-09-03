import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/widgets/img.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/button_follow.dart';
import 'package:zap_stream_flutter/widgets/header.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/notifications_button.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/stream_grid.dart';

class ProfilePage extends StatelessWidget {
  final String pubkey;

  const ProfilePage({super.key, required this.pubkey});

  @override
  Widget build(BuildContext context) {
    final hexPubkey = bech32ToHex(pubkey);
    final isMe = ndk.accounts.getPublicKey() == hexPubkey;

    return ProfileLoaderWidget(hexPubkey, (ctx, state) {
      final profile = state.data ?? Metadata(pubKey: hexPubkey);
      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                HeaderWidget(),
                if (profile.banner != null)
                  SizedBox(
                    height: 140,
                    width: double.maxFinite,
                    child: Img(url: profile.banner!),
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
                          Text.rich(
                            TextSpan(
                              style: TextStyle(color: LAYER_5),
                              children: textToSpans(
                                context,
                                profile.about ?? "",
                                [],
                                profile.pubKey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (isMe)
                  Row(
                    spacing: 8,
                    children: [
                      BasicButton.text(
                        t.button.logout,
                        onTap: (context) {
                          loginData.logout();
                          ndk.accounts.logout();
                          context.go("/");
                        },
                      ),
                      BasicButton.text(
                        t.button.settings,
                        onTap: (context) {
                          context.push("/settings");
                        },
                      ),
                    ],
                  ),
                if (!isMe)
                  Row(
                    spacing: 8,
                    children: [
                      FollowButton(pubkey: hexPubkey),
                      NotificationsButtonWidget(pubkey: hexPubkey),
                    ],
                  ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    t.profile.past_streams,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          RxFilter<StreamEvent>(
            Key("profile-streams:$hexPubkey"),
            filters: [
              Filter(kinds: [30_311], limit: 100, pTags: [hexPubkey]),
              Filter(kinds: [30_311], limit: 100, authors: [hexPubkey]),
            ],
            mapper: (e) => StreamEvent(e),
            builder: (ctx, state) {
              return StreamGrid(
                events: state ?? const [],
                showLive: true,
                showEnded: true,
                showPlanned: true,
              );
            },
          ),
        ],
      );
    });
  }
}
