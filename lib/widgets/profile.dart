import 'package:flutter/widgets.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';

class ProfileLoaderWidget extends StatelessWidget {
  final String pubkey;
  final AsyncWidgetBuilder<Metadata?> builder;

  const ProfileLoaderWidget(this.pubkey, this.builder, {super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ndk.metadata.loadMetadata(pubkey),
      builder: builder,
    );
  }
}

class ProfileNameWidget extends StatelessWidget {
  final Metadata profile;
  final TextStyle? style;

  const ProfileNameWidget({super.key, required this.profile, this.style});

  static Widget pubkey(String pubkey, {TextStyle? style}) {
    return FutureBuilder(
      future: ndk.metadata.loadMetadata(pubkey),
      builder:
          (ctx, data) => ProfileNameWidget(
            profile: data.data ?? Metadata(pubKey: pubkey),
            style: style,
          ),
    );
  }

  static nameFromProfile(Metadata profile) {
    if ((profile.displayName?.length ?? 0) > 0) {
      return profile.displayName!;
    }
    if ((profile.name?.length ?? 0) > 0) {
      return profile.name!;
    }
    return Nip19.encodeSimplePubKey(profile.pubKey);
  }

  @override
  Widget build(BuildContext context) {
    return Text(ProfileNameWidget.nameFromProfile(profile), style: style);
  }
}

class ProfileWidget extends StatelessWidget {
  final Metadata profile;
  final TextStyle? style;
  final double? size;

  const ProfileWidget({
    super.key,
    required this.profile,
    this.style,
    this.size,
  });

  static Widget pubkey(String pubkey) {
    return ProfileLoaderWidget(pubkey, (ctx, state) {
      return ProfileWidget(profile: state.data ?? Metadata(pubKey: pubkey));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        AvatarWidget(profile: profile, size: size),
        ProfileNameWidget(profile: profile),
      ],
    );
  }
}
