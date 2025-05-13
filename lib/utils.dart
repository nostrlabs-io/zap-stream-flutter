import 'package:bech32/bech32.dart';
import 'package:collection/collection.dart';
import 'package:convert/convert.dart';
import 'package:intl/intl.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';

/// Container class over event and stream info
class StreamEvent {
  late final StreamInfo info;
  final Nip01Event event;

  /// Return the 'a' tag for this stream
  String get aTag {
    return "${event.kind}:${event.pubKey}:${info.id}";
  }

  StreamEvent(this.event) {
    info = extractStreamInfo(event);
  }
}

enum StreamStatus { live, ended, planned }

/// Extracted tags from NIP-53 event
class StreamInfo {
  String? id;
  String? title;
  String? summary;
  String? image;
  String? thumbnail;
  StreamStatus? status;
  String? stream;
  String? recording;
  String? contentWarning;
  List<String> tags;
  String? goal;
  int? participants;
  int? starts;
  int? ends;
  String? service;
  String host;
  String? gameId;
  GameInfo? gameInfo;
  List<String> streams;
  List<String>? relays;

  StreamInfo({
    this.id,
    this.title,
    this.summary,
    this.image,
    this.thumbnail,
    this.status,
    this.stream,
    this.recording,
    this.contentWarning,
    this.tags = const [],
    this.goal,
    this.participants,
    this.starts,
    this.ends,
    this.service,
    required this.host,
    this.gameId,
    this.gameInfo,
    this.streams = const [],
  });
}

class GameInfo {
  String id;
  String name;
  List<String> genres;
  String className;

  GameInfo({
    required this.id,
    required this.name,
    required this.genres,
    required this.className,
  });
}

final RegExp gameTagFormat = RegExp(
  r'^[a-z-]+:[a-z0-9-]+$',
  caseSensitive: false,
);

StreamInfo extractStreamInfo(Nip01Event ev) {
  var ret = StreamInfo(host: getHost(ev));

  void matchTag(List<String> tag, String k, void Function(String) into) {
    if (tag[0] == k) {
      into(tag[1]);
    }
  }

  for (var t in ev.tags) {
    matchTag(t, 'd', (v) => ret.id = v);
    matchTag(t, 'title', (v) => ret.title = v);
    matchTag(t, 'summary', (v) => ret.summary = v);
    matchTag(t, 'image', (v) => ret.image = v);
    matchTag(t, 'thumbnail', (v) => ret.thumbnail = v);
    matchTag(
      t,
      'status',
      (v) =>
          ret.status = switch (v.toLowerCase()) {
            'live' => StreamStatus.live,
            'ended' => StreamStatus.ended,
            'planned' => StreamStatus.planned,
            _ => null,
          },
    );
    if (t[0] == 'streaming') {
      ret.streams = [...ret.streams, t[1]];
    }
    matchTag(t, 'recording', (v) => ret.recording = v);
    matchTag(t, 'url', (v) => ret.recording = v);
    matchTag(t, 'content-warning', (v) => ret.contentWarning = v);
    matchTag(
      t,
      'current_participants',
      (v) => ret.participants = int.tryParse(v),
    );
    matchTag(t, 'goal', (v) => ret.goal = v);
    matchTag(t, 'starts', (v) => ret.starts = int.tryParse(v));
    matchTag(t, 'ends', (v) => ret.ends = int.tryParse(v));
    matchTag(t, 'service', (v) => ret.service = v);
    if (t[0] == "relays") {
      ret.relays = t.slice(1);
    }
  }

  var sortedTags = sortStreamTags(ev.tags);
  ret.tags = sortedTags.regularTags;

  var gameTag = extractGameTag(sortedTags.prefixedTags);
  ret.gameId = gameTag.gameId;
  ret.gameInfo = gameTag.gameInfo;

  if (ret.streams.isNotEmpty) {
    var isN94 = ret.streams.contains('nip94');
    if (isN94) {
      ret.stream = 'nip94';
    } else {
      ret.stream = ret.streams.firstWhereOrNull((a) => a.contains('.m3u8'));
    }
    if (ret.status == StreamStatus.ended &&
        (ret.recording?.isNotEmpty ?? false)) {
      ret.stream = ret.recording;
    }
  }

  return ret;
}

({List<String> regularTags, List<String> prefixedTags}) sortStreamTags(
  List<dynamic> tags,
) {
  var plainTags =
      tags
          .where((a) => a is List<String> ? a[0] == 't' : true)
          .map((a) => a is List<String> ? a[1] : a as String)
          .toList();

  var regularTags = plainTags.where((a) => !gameTagFormat.hasMatch(a)).toList();
  var prefixedTags = plainTags.where((a) => !regularTags.contains(a)).toList();

  return (regularTags: regularTags, prefixedTags: prefixedTags);
}

({GameInfo? gameInfo, String? gameId}) extractGameTag(List<String> tags) {
  final gameId = tags.firstWhereOrNull((a) => gameTagFormat.hasMatch(a));

  final internalGame = AllCategories.firstWhereOrNull(
    (a) => gameId == 'internal:${a.id}',
  );
  if (internalGame != null) {
    return (
      gameInfo: GameInfo(
        id: internalGame.id,
        name: internalGame.name,
        genres: internalGame.tags,
        className: internalGame.className,
      ),
      gameId: gameId,
    );
  }

  final lowerTags = tags.map((t) => t.toLowerCase());
  final taggedCategory = AllCategories.firstWhereOrNull(
    (a) => a.tags.any(lowerTags.contains),
  );
  if (taggedCategory != null) {
    return (
      gameInfo: GameInfo(
        id: taggedCategory.id,
        name: taggedCategory.name,
        genres: taggedCategory.tags,
        className: taggedCategory.className,
      ),
      gameId: gameId,
    );
  }
  return (gameInfo: null, gameId: gameId);
}

String getHost(Nip01Event ev) {
  return ev.tags.firstWhere(
    (t) => t[0] == "p" && t.length > 2 && t[3] == "host",
    orElse: () => ["p", ev.pubKey], // fake p tag with event pubkey
  )[1];
}

class Category {
  String id;
  String name;
  List<String> tags;
  String className;

  Category({
    required this.id,
    required this.name,
    required this.tags,
    required this.className,
  });
}

List<Category> AllCategories = []; // Implement as needed

String formatSats(int n) {
  final fmt = NumberFormat();
  if (n >= 1000000) {
    return "${fmt.format(n / 1000000)}M";
  } else if (n >= 1500) {
    return "${fmt.format(n / 1000)}k";
  } else {
    return fmt.format(n);
  }
}

String zapSum(List<Nip01Event> zaps) {
  final total = zaps
      .map((e) => ZapReceipt.fromEvent(e))
      .fold(0, (acc, v) => acc + (v.amountSats ?? 0));
  return formatSats(total);
}

String bech32ToHex(String bech32) {
  final decoder = Bech32Decoder();
  final data = decoder.convert(bech32, 10_000);
  final data8bit = Nip19.convertBits(data.data, 5, 8, false);
  if (data.hrp == "nevent" || data.hrp == "naddr" || data.hrp == "nprofile") {
    final tlv = parseTLV(data8bit);
    return hex.encode(tlv.firstWhere((v) => v.type == 0).value);
  } else {
    return hex.encode(data8bit);
  }
}

class TLV {
  final int type;
  final int length;
  final List<int> value;

  TLV(this.type, this.length, this.value);
}

List<TLV> parseTLV(List<int> data) {
  List<TLV> result = [];
  int index = 0;

  while (index < data.length) {
    // Check if we have enough bytes for type and length
    if (index + 2 > data.length) {
      throw FormatException('Incomplete TLV data');
    }

    // Read type (1 byte)
    int type = data[index];
    index++;

    // Read length (1 byte)
    int length = data[index];
    index++;

    // Check if we have enough bytes for value
    if (index + length > data.length) {
      throw FormatException('TLV value length exceeds available data');
    }

    // Read value
    List<int> value = data.sublist(index, index + length);
    index += length;

    result.add(TLV(type, length, value));
  }

  return result;
}
