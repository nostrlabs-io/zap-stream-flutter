import 'package:flutter/widgets.dart';
import 'package:ndk/domain_layer/entities/nip_51_list.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class MuteButton extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final signer = ndk.accounts.getLoggedAccount()?.signer;
    if (signer == null || signer.getPublicKey() == pubkey) {
      return SizedBox.shrink();
    }

    return FutureBuilder(
      future: ndk.lists.getSingleNip51List(Nip51List.kMute, signer),
      builder: (ctx, state) {
        final mutes = (state.data?.pubKeys ?? []).map((e) => e.value).toSet();
        final isMuted = mutes.contains(pubkey);
        return BasicButton(
          Text(
            isMuted ? t.button.unmute : t.button.mute,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          decoration: BoxDecoration(
            color: isMuted ? LAYER_2 : WARNING,
            borderRadius: DEFAULT_BR,
          ),
          onTap: () async {
            if (onTap != null) {
              onTap!();
            }
            if (isMuted) {
              await ndk.lists.broadcastRemoveNip51ListElement(
                Nip51List.kMute,
                Nip51List.kPubkey,
                pubkey,
                null,
              );
              if (onUnmute != null) {
                onUnmute!();
              }
            } else {
              await ndk.lists.broadcastAddNip51ListElement(
                Nip51List.kMute,
                Nip51List.kPubkey,
                pubkey,
                null,
              );

              if (onMute != null) {
                onMute!();
              }
            }
          },
        );
      },
    );
  }
}
