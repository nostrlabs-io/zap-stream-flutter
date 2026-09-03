import 'package:flutter/widgets.dart';
import 'package:ndk/domain_layer/entities/nip_51_list.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class MuteButton extends StatefulWidget {
  final String pubkey;
  final void Function()? onTap;
  final void Function()? onMute;
  final void Function()? onUnmute;

  const MuteButton({
    super.key,
    required this.pubkey,
    this.onTap,
    this.onMute,
    this.onUnmute,
  });

  @override
  State<MuteButton> createState() => _MuteButton();
}

class _MuteButton extends State<MuteButton> {
  /// Fetched once per mount and again after a change; the previous version
  /// re-queried inside build() and, being stateless, never showed the new
  /// state after a tap.
  Future<Nip51List?>? _mutes;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _mutes = ndk.lists.getSingleNip51List(Nip51List.kMute);
  }

  @override
  Widget build(BuildContext context) {
    final signer = ndk.accounts.getLoggedAccount()?.signer;
    if (signer == null || signer.getPublicKey() == widget.pubkey) {
      return SizedBox.shrink();
    }

    return FutureBuilder(
      future: _mutes,
      builder: (ctx, state) {
        final mutes = (state.data?.pubKeys ?? []).map((e) => e.value).toSet();
        final isMuted = mutes.contains(widget.pubkey);
        return BasicButton(
          Text(
            isMuted ? t.button.unmute : t.button.mute,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          disabled: _busy,
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
            color: isMuted ? LAYER_2 : WARNING,
            borderRadius: DEFAULT_BR,
          ),
          onTap: (_) async {
            widget.onTap?.call();
            setState(() => _busy = true);
            try {
              if (isMuted) {
                await ndk.lists.removeElementFromList(
                  kind: Nip51List.kMute,
                  tag: Nip51List.kPubkey,
                  value: widget.pubkey,
                );
                widget.onUnmute?.call();
              } else {
                await ndk.lists.addElementToList(
                  kind: Nip51List.kMute,
                  tag: Nip51List.kPubkey,
                  value: widget.pubkey,
                );
                widget.onMute?.call();
              }
            } finally {
              if (mounted) {
                setState(() {
                  _busy = false;
                  _mutes = ndk.lists.getSingleNip51List(Nip51List.kMute);
                });
              }
            }
          },
        );
      },
    );
  }
}
