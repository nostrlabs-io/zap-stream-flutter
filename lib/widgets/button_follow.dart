import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class FollowButton extends StatelessWidget {
  final String pubkey;
  final void Function()? onTap;
  final void Function()? onFollow;
  final void Function()? onUnfollow;
  final ValueNotifier<bool> _loading = ValueNotifier(false);

  FollowButton({
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

    return ValueListenableBuilder(
      valueListenable: _loading,
      builder: (context, loading, _) {
        return FutureBuilder(
          future: ndk.follows.getContactList(signer.getPublicKey()),
          builder: (context, state) {
            final follows = state.data?.contacts ?? [];
            final isFollowing = follows.contains(pubkey);
            return BasicButton(
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  loading
                      ? SizedBox(
                        height: 16,
                        width: 16,
                        child: CircularProgressIndicator(),
                      )
                      : Icon(
                        isFollowing ? Icons.person_remove : Icons.person_add,
                        size: 16,
                      ),
                  Text(
                    isFollowing
                        ? t.button.unfollow
                        : t.button.follow,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              disabled: loading,
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: DEFAULT_BR,
                color: LAYER_2,
              ),
              onTap: () async {
                _loading.value = true;
                try {
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
                } finally {
                  _loading.value = false;
                }
              },
            );
          },
        );
      },
    );
  }
}
