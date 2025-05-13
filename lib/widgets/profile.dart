import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
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
      key: super.key ?? Key("profile-loader:$pubkey"),
      future: ndk.metadata.loadMetadata(pubkey),
      builder: builder,
    );
  }
}

class ProfileNameWidget extends StatelessWidget {
  final Metadata profile;
  final TextStyle? style;

  const ProfileNameWidget({super.key, required this.profile, this.style});

  static Widget pubkey(String pubkey, {Key? key, TextStyle? style}) {
    return ProfileLoaderWidget(
      pubkey,
      (ctx, data) => ProfileNameWidget(
        profile: data.data ?? Metadata(pubKey: pubkey),
        style: style,
      ),
      key: key,
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
    return GestureDetector(
      onTap:
          () => context.push(
            "/p/${Nip19.encodePubKey(profile.pubKey)}",
            extra: profile,
          ),
      child: Text(ProfileNameWidget.nameFromProfile(profile), style: style),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final Metadata profile;
  final TextStyle? style;
  final double? size;
  final List<Widget>? children;
  final bool? showName;
  final double? spacing;

  const ProfileWidget({
    super.key,
    required this.profile,
    this.style,
    this.size,
    this.children,
    this.showName,
    this.spacing,
  });

  static Widget pubkey(
    String pubkey, {
    double? size,
    List<Widget>? children,
    bool? showName,
    double? spacing,
    Key? key,
  }) {
    return ProfileLoaderWidget(pubkey, (ctx, state) {
      return ProfileWidget(
        profile: state.data ?? Metadata(pubKey: pubkey),
        size: size,
        showName: showName,
        spacing: spacing,
        key: key,
        children: children,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing ?? 8,
      children: [
        AvatarWidget(profile: profile, size: size),
        if (showName ?? true) ProfileNameWidget(profile: profile, key: key),
        ...(children ?? []),
      ],
    );
  }
}
