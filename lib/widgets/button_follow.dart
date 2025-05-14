import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class FollowButton extends StatelessWidget {
  final String pubkey;
  final void Function()? onTap;
  final void Function()? onFollow;
  final void Function()? onUnfollow;

  const FollowButton({
    super.key,
    required this.pubkey,
    this.onTap,
    this.onFollow,
    this.onUnfollow,
  });

  @override
  Widget build(BuildContext context) {
    final signer = ndk.accounts.getLoggedAccount()?.signer;
    if (signer == null || signer.getPublicKey() == pubkey) {
      return SizedBox.shrink();
    }

    return FutureBuilder(
      future: ndk.follows.getContactList(signer.getPublicKey()),
      builder: (context, state) {
        final follows = state.data?.contacts ?? [];
        final isFollowing = follows.contains(pubkey);
        return BasicButton(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4,
            children: [
              Icon(isFollowing ? Icons.person_remove : Icons.person_add, size: 16),
              Text(
                isFollowing ? "Unfollow" : "Follow",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: DEFAULT_BR,
            color: LAYER_2,
          ),
          onTap: () async {
            if (onTap != null) {
              onTap!();
            }
            if (isFollowing) {
              await ndk.follows.broadcastRemoveContact(pubkey);
              if (onUnfollow != null) {
                onUnfollow!();
              }
            } else {
              await ndk.follows.broadcastAddContact(pubkey);
              if (onFollow != null) {
                onFollow!();
              }
            }
          },
        );
      },
    );
  }
}
