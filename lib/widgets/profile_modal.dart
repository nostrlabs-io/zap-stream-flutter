import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/mute_button.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';
import 'package:zap_stream_flutter/widgets/zap.dart';

class ProfileModalWidget extends StatelessWidget {
  final Metadata profile;
  final Nip01Event event;

  const ProfileModalWidget({
    super.key,
    required this.profile,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
      child: Column(
        spacing: 10,
        children: [
          ProfileWidget(profile: profile),
          BasicButton.text(
            "Zap",
            onTap: () {
              showModalBottomSheet(
                context: context,
                constraints: BoxConstraints.expand(),
                builder: (ctx) {
                  return ZapWidget(pubkey: event.pubKey, target: event);
                },
              );
            },
          ),
          MuteButton(pubkey: event.pubKey),
        ],
      ),
    );
  }
}
