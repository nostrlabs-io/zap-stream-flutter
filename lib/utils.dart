import 'dart:convert';

import 'package:bech32/bech32.dart';
import 'package:collection/collection.dart';
import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip19/hrps.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';

/// Container class over event and stream info
class StreamEvent {
  late final StreamInfo info;
  final Nip01Event event;

  /// Return the 'a' tag for this stream
  String get aTag {
    return "${event.kind}:${event.pubKey}:${info.id}";
  }

  /// Get the naddr for this stream
  String get link {
    final k = event.kind & 0xFFFFFFFF;
    final idData = utf8.encode(info.id!);
    final tlv = [
      TLV(0, idData.length, idData),
      TLV(2, 32, hex.decode(event.pubKey)),
      TLV(3, 4, [
        (k >> 24) & 0xFF,
        (k >> 16) & 0xFF,
        (k >> 8) & 0xFF,
        k & 0xFF,
      ]),
    ];
    return encodeBech32TLV("naddr", tlv);
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
  final String id;
  final String name;
  final List<String> genres;
  final String? coverImage;

  const GameInfo({
    required this.id,
    required this.name,
    required this.genres,
    required this.coverImage,
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
      if (ret.relays!.isEmpty) {
        ret.relays = null;
      }
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

  final internalGame = allCategories.firstWhereOrNull(
    (a) => gameId == 'internal:${a.id}',
  );
  if (internalGame != null) {
    return (
      gameInfo: GameInfo(
        id: "internal:${internalGame.id}",
        name: internalGame.name,
        genres: internalGame.tags,
        coverImage: internalGame.coverImage,
      ),
      gameId: gameId,
    );
  }

  final lowerTags = tags.map((t) => t.toLowerCase());
  final taggedCategory = allCategories.firstWhereOrNull(
    (a) => a.tags.any(lowerTags.contains),
  );
  if (taggedCategory != null) {
    return (
      gameInfo: GameInfo(
        id: "internal:${taggedCategory.id}",
        name: taggedCategory.name,
        genres: taggedCategory.tags,
        coverImage: taggedCategory.coverImage,
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
  final String id;
  final String name;
  final IconData icon;
  final List<String> tags;
  final int order;
  final String? coverImage;

  const Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.tags,
    required this.order,
    this.coverImage,
  });
}

const List<Category> allCategories = [
  Category(
    id: "irl",
    name: "IRL",
    icon: Icons.face,
    tags: ["irl"],
    order: 0,
    coverImage: "assets/category/irl.jpeg",
  ),
  Category(
    id: "gaming",
    name: "Gaming",
    icon: Icons.gamepad,
    tags: ["gaming"],
    order: 0,
    coverImage: "assets/category/gaming.jpeg",
  ),
  Category(
    id: "music",
    name: "Music",
    icon: Icons.note,
    tags: ["music", "raido"],
    order: 0,
    coverImage: "assets/category/music.jpeg",
  ),
  Category(
    id: "talk",
    name: "Talk",
    icon: Icons.mic,
    tags: ["talk", "just-chatting"],
    order: 0,
    coverImage: "assets/category/talk.jpeg",
  ),
  Category(
    id: "art",
    name: "Art",
    icon: Icons.brush,
    tags: ["art"],
    order: 0,
    coverImage: "assets/category/art.jpeg",
  ),
  Category(
    id: "gambling",
    name: "Gambling",
    icon: Icons.casino,
    tags: ["gambling", "casino", "slots"],
    order: 1,
  ),
  Category(
    id: "science-and-technology",
    name: "Science & Technology",
    icon: Icons.casino,
    tags: ["science", "tech", "technology"],
    order: 1,
  ),
];

String formatSats(int n, {int? maxDigits}) {
  final fmt = NumberFormat();
  fmt.maximumFractionDigits = maxDigits ?? 2;
  if (n >= 1000000) {
    return "${fmt.format(n / 1000000)}M";
  } else if (n >= 1500) {
    return "${fmt.format(n / 1000)}K";
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

class TopZaps {
  final int sum;
  final List<ZapReceipt> zaps;

  const TopZaps({required this.sum, required this.zaps});
}

Map<String, TopZaps> topZapSender(Iterable<ZapReceipt> zaps) {
  return Map.fromEntries(
    zaps
        .where((e) => e.sender != null)
        .groupListsBy((v) => v.sender!)
        .entries
        .map(
          (v) => MapEntry(
            v.key,
            TopZaps(
              sum: v.value.fold(0, (acc, v) => acc + (v.amountSats ?? 0)),
              zaps: v.value,
            ),
          ),
        ),
  );
}

Map<String, TopZaps> topZapReceiver(Iterable<ZapReceipt> zaps) {
  return Map.fromEntries(
    zaps
        .where((e) => e.recipient != null)
        .groupListsBy((v) => v.recipient!)
        .entries
        .map(
          (v) => MapEntry(
            v.key,
            TopZaps(
              sum: v.value.fold(0, (acc, v) => acc + (v.amountSats ?? 0)),
              zaps: v.value,
            ),
          ),
        ),
  );
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

// https://github.com/nostr-protocol/nips/blob/master/19.md
class TLVTypes {
  static const int kSpecial = 0;
  static const int kRelay = 1;
  static const int kAuthor = 2;
  static const int kKind = 3;
}

class TLVEntity {
  final String hrp;
  final List<TLV> data;

  const TLVEntity(this.hrp, this.data);

  TLV? get special {
    return data.firstWhereOrNull((e) => e.type == TLVTypes.kSpecial);
  }

  /// return the special entry as hex
  String? get specialHex {
    final r = special;
    return r != null ? hex.encode(r.value) : null;
  }

  /// return the special entry as utf8 string
  String? get specialUtf8 {
    final r = special;
    return r != null ? utf8.decode(r.value) : null;
  }

  int? get kind {
    final k = data.firstWhereOrNull((e) => e.type == TLVTypes.kKind);
    return k != null
        ? k.value[0] << 24 | k.value[1] << 16 | k.value[2] << 8 | k.value[3]
        : null;
  }

  String? get author {
    final a = data.firstWhereOrNull((e) => e.type == TLVTypes.kAuthor);
    return a != null ? hex.encode(a.value) : null;
  }

  List<String>? get relays {
    final r = data.where((r) => r.type == TLVTypes.kRelay);
    if (r.isNotEmpty) {
      return r.map((e) => utf8.decode(e.value)).toList();
    }
    return null;
  }

  Filter toFilter() {
    var ret = <String, dynamic>{};
    if (hrp == Hrps.kNaddr) {
      final dTag = specialUtf8;
      final kindValue = kind;
      final authorValue = author;
      if (dTag == null || kindValue == null || authorValue == null) {
        throw "Invalid naddr entity, special, kind and author must be set";
      }
      ret["#d"] = [dTag];
      ret["authors"] = [authorValue];
      ret["kinds"] = [kindValue];
    } else if (hrp == Hrps.kNevent) {
      final idValue = specialHex;
      if (idValue == null) {
        throw "Invalid nevent, special entry is invalid or missing";
      }
      ret["ids"] = [idValue];
      final kindValue = kind;
      if (kindValue != null) {
        ret["kinds"] = [kindValue];
      }
      final authorValue = author;
      if (authorValue != null) {
        ret["authors"] = [authorValue];
      }
    } else if (hrp == Hrps.kNoteId) {
      final idValue = specialHex;
      if (idValue == null) {
        throw "Invalid nevent, special entry is invalid or missing";
      }
      ret["ids"] = [idValue];
    } else {
      throw "Cant convert $hrp to a filter";
    }
    return Filter.fromMap(ret);
  }
}

class TLV {
  final int type;
  final int length;
  final List<int> value;

  TLV(this.type, this.length, this.value);

  void validate() {
    if (type < 0 || type > 255) {
      throw ArgumentError('Type must be 0-255 (1 byte)');
    }
    if (length < 0 || length > 255) {
      throw ArgumentError('Length must be 0-255 (1 byte)');
    }
    if (length != value.length) {
      throw ArgumentError(
        'Length ($length) does not match value length (${value.length})',
      );
    }
    for (var byte in value) {
      if (byte < 0 || byte > 255) {
        throw ArgumentError('Value bytes must be 0-255');
      }
    }
  }
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

List<int> serializeTLV(List<TLV> tlvs) {
  List<int> result = [];

  for (var tlv in tlvs) {
    tlv.validate();
    result.add(tlv.type);
    result.add(tlv.length);
    result.addAll(tlv.value);
  }

  return result;
}

/// Encodes TLV data into a Bech32 string
String encodeBech32TLV(String hrp, List<TLV> tlvs) {
  try {
    final data8bit = serializeTLV(tlvs);
    final data5bit = Nip19.convertBits(data8bit, 8, 5, true);
    final bech32Data = Bech32(hrp, data5bit);
    return bech32.encode(bech32Data, 10_000);
  } catch (e) {
    throw FormatException('Failed to encode Bech32 or TLV: $e');
  }
}

TLVEntity decodeBech32ToTLVEntity(String input) {
  final decoder = Bech32Decoder();
  final data = decoder.convert(input, 10_000);
  final data8bit = Nip19.convertBits(data.data, 5, 8, false);
  if (data.hrp != "npub" || data.hrp != "nsec" || data.hrp != "note") {
    return TLVEntity(data.hrp, parseTLV(data8bit));
  } else {
    // convert to basic type using special entry only
    return TLVEntity(data.hrp, [TLV(0, data8bit.length, data8bit)]);
  }
}

Filter aTagToFilter(String tag) {
  final ts = tag.split(":");
  return Filter(kinds: [int.parse(ts[0])], authors: [ts[1]], dTags: [ts[2]]);
}
