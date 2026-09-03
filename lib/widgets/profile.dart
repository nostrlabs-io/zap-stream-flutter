import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';

/// Profiles resolved this session, so a rebuild renders synchronously
final Map<String, Metadata> syncProfileCache = {};

/// Lookups currently on the wire, so fifty chat rows for the same author
/// share one request instead of each opening their own.
final Map<String, Future<Metadata?>> _inFlight = {};

/// Pubkeys the network had nothing for, and when we last asked. Without this
/// every rebuild of a row by an unknown author re-queries the relays and
/// waits out the idle timeout again.
final Map<String, DateTime> _missing = {};
const _missingRetry = Duration(minutes: 5);

/// Loads a profile through the session cache, de-duplicating concurrent
/// requests for the same pubkey.
Future<Metadata?> loadProfile(String pubkey) {
  final cached = syncProfileCache[pubkey];
  if (cached != null) return Future.value(cached);

  final missedAt = _missing[pubkey];
  if (missedAt != null && DateTime.now().difference(missedAt) < _missingRetry) {
    return Future.value(null);
  }

  return _inFlight.putIfAbsent(pubkey, () {
    return ndk.metadata
        .loadMetadata(pubkey)
        .then<Metadata?>((profile) {
          if (profile != null) {
            syncProfileCache[pubkey] = profile;
            _missing.remove(pubkey);
          } else {
            _missing[pubkey] = DateTime.now();
          }
          return profile;
        })
        .catchError((_) => null)
        .whenComplete(() => _inFlight.remove(pubkey));
  });
}

class ProfileLoaderWidget extends StatefulWidget {
  final String pubkey;
  final AsyncWidgetBuilder<Metadata?> builder;

  const ProfileLoaderWidget(this.pubkey, this.builder, {super.key});

  @override
  State<ProfileLoaderWidget> createState() => _ProfileLoaderWidget();
}

class _ProfileLoaderWidget extends State<ProfileLoaderWidget> {
  AsyncSnapshot<Metadata?> _snapshot = const AsyncSnapshot.waiting();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void didUpdateWidget(covariant ProfileLoaderWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.pubkey != widget.pubkey) {
      _load();
    }
  }

  /// The lookup runs once per pubkey per mount. It used to be created inside
  /// build(), so every parent rebuild hit the database again for every row.
  void _load() {
    final pubkey = widget.pubkey;
    final cached = syncProfileCache[pubkey];
    if (cached != null) {
      _snapshot = AsyncSnapshot.withData(ConnectionState.done, cached);
      return;
    }
    _snapshot = const AsyncSnapshot.waiting();
    loadProfile(pubkey).then((profile) {
      if (mounted && widget.pubkey == pubkey) {
        setState(() {
          _snapshot = AsyncSnapshot.withData(ConnectionState.done, profile);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _snapshot);
  }
}

class ProfileNameWidget extends StatelessWidget {
  final Metadata profile;
  final TextStyle? style;
  final bool? linkToProfile;

  const ProfileNameWidget({
    super.key,
    required this.profile,
    this.style,
    this.linkToProfile,
  });

  static Widget pubkey(
    String pubkey, {
    Key? key,
    TextStyle? style,
    bool? linkToProfile,
  }) {
    return ProfileLoaderWidget(
      pubkey,
      (ctx, data) => ProfileNameWidget(
        profile: data.data ?? Metadata(pubKey: pubkey),
        style: style,
        linkToProfile: linkToProfile,
      ),
      key: key,
    );
  }

  static String nameFromProfile(Metadata profile) {
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
    final inner = Text(
      ProfileNameWidget.nameFromProfile(profile),
      style: style,
      overflow: TextOverflow.ellipsis,
    );
    if (linkToProfile ?? true) {
      return GestureDetector(
        onTap: () => context.push(
          "/p/${Nip19.encodePubKey(profile.pubKey)}",
          extra: profile,
        ),
        child: inner,
      );
    } else {
      return inner;
    }
  }
}

class ProfileWidget extends StatelessWidget {
  final Metadata profile;
  final TextStyle? style;
  final double? size;
  final List<Widget>? children;
  final bool? showName;
  final double? spacing;
  final bool? linkToProfile;

  const ProfileWidget({
    super.key,
    required this.profile,
    this.style,
    this.size,
    this.children,
    this.showName,
    this.spacing,
    this.linkToProfile,
  });

  static Widget pubkey(
    String pubkey, {
    double? size,
    List<Widget>? children,
    bool? showName,
    double? spacing,
    Key? key,
    bool? linkToProfile,
  }) {
    return ProfileLoaderWidget(pubkey, (ctx, state) {
      return ProfileWidget(
        profile: state.data ?? Metadata(pubKey: pubkey),
        size: size,
        showName: showName,
        spacing: spacing,
        key: key,
        linkToProfile: linkToProfile,
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
        if (showName ?? true)
          Expanded(
            child: ProfileNameWidget(
              profile: profile,
              key: key,
              linkToProfile: linkToProfile,
            ),
          ),
        ...(children ?? []),
      ],
    );
  }
}
