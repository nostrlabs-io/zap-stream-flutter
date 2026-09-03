import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class FollowButton extends StatefulWidget {
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
  State<FollowButton> createState() => _FollowButton();
}

class _FollowButton extends State<FollowButton> {
  /// Fetched once per mount and after each change. It used to be created in
  /// build(), so the loading toggle on tap restarted the fetch and the label
  /// flipped back to "Follow" while the request was in flight.
  Future<ContactList?>? _contacts;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  void _refresh() {
    final pubkey = ndk.accounts.getPublicKey();
    _contacts = pubkey != null ? ndk.follows.getContactList(pubkey) : null;
  }

  @override
  Widget build(BuildContext context) {
    final signer = ndk.accounts.getLoggedAccount()?.signer;
    if (signer == null || signer.getPublicKey() == widget.pubkey) {
      return SizedBox.shrink();
    }

    return FutureBuilder(
      future: _contacts,
      builder: (context, state) {
        final follows = state.data?.contacts ?? [];
        final isFollowing = follows.contains(widget.pubkey);
        return BasicButton(
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              _loading
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
                isFollowing ? t.button.unfollow : t.button.follow,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          disabled: _loading,
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(borderRadius: DEFAULT_BR, color: LAYER_2),
          onTap: (_) async {
            setState(() => _loading = true);
            try {
              widget.onTap?.call();
              if (isFollowing) {
                await ndk.follows.broadcastRemoveContact(widget.pubkey);
                widget.onUnfollow?.call();
              } else {
                await ndk.follows.broadcastAddContact(widget.pubkey);
                widget.onFollow?.call();
              }
            } finally {
              if (mounted) {
                setState(() {
                  _loading = false;
                  _refresh();
                });
              }
            }
          },
        );
      },
    );
  }
}
