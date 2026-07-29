import 'dart:developer' as developer;

import 'package:http/http.dart' as http;
import 'package:zap_stream_flutter/const.dart';

/// A single rendition listed in an HLS multivariant (master) playlist.
class HlsVariant {
  final String url;
  final int? height;
  final int? bandwidth;

  const HlsVariant({required this.url, this.height, this.bandwidth});

  /// Label to show in a quality picker. Height is what viewers recognise;
  /// bitrate is the only distinguishing value when renditions share a height.
  String get name {
    if (height != null) return "${height}p";
    if (bandwidth != null) {
      return "${(bandwidth! / 1000000).toStringAsFixed(1)} Mbps";
    }
    return url;
  }
}

/// Only HLS can be handed to the video player: the `streaming` tags of a live
/// event also carry non-HLS egress URLs (MoQ), which it cannot open.
bool isHlsUrl(String url) {
  final u = Uri.tryParse(url);
  if (u == null) return false;
  if (u.scheme != "http" && u.scheme != "https") return false;
  return u.path.endsWith(".m3u8");
}

/// Parses the `EXT-X-STREAM-INF` entries of a multivariant playlist.
///
/// Returns an empty list for a media playlist or an unreachable URL: the
/// caller falls back to playing the URL it already has.
Future<List<HlsVariant>> fetchHlsVariants(String masterUrl) async {
  final master = Uri.parse(masterUrl);
  try {
    final rsp = await http
        .get(master, headers: {"user-agent": userAgent})
        .timeout(const Duration(seconds: 10));
    if (rsp.statusCode != 200) return const [];
    return parseHlsVariants(rsp.body, master);
  } catch (e) {
    developer.log("Failed to load master playlist $masterUrl: $e");
    return const [];
  }
}

List<HlsVariant> parseHlsVariants(String playlist, Uri base) {
  final ret = <HlsVariant>[];
  final lines = playlist.split(RegExp(r"\r?\n"));
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i].trim();
    if (!line.startsWith("#EXT-X-STREAM-INF:")) continue;

    // The URI is the next non-blank, non-comment line.
    String? uri;
    for (var j = i + 1; j < lines.length; j++) {
      final candidate = lines[j].trim();
      if (candidate.isEmpty || candidate.startsWith("#")) continue;
      uri = candidate;
      break;
    }
    if (uri == null) continue;

    final attrs = line.substring("#EXT-X-STREAM-INF:".length);
    ret.add(
      HlsVariant(
        url: base.resolve(uri).toString(),
        height: _resolutionHeight(_attr(attrs, "RESOLUTION")),
        bandwidth: int.tryParse(_attr(attrs, "BANDWIDTH") ?? ""),
      ),
    );
  }

  ret.sort((a, b) => (b.height ?? 0).compareTo(a.height ?? 0));
  return ret;
}

/// Reads one attribute out of an attribute-list, tolerating the quoted-string
/// values that may themselves contain commas (CODECS).
String? _attr(String attrs, String name) {
  final m = RegExp('(?:^|,)$name=("[^"]*"|[^,]*)').firstMatch(attrs);
  if (m == null) return null;
  final v = m.group(1)!;
  return v.startsWith('"') ? v.substring(1, v.length - 1) : v;
}

int? _resolutionHeight(String? resolution) {
  if (resolution == null) return null;
  final parts = resolution.split("x");
  return parts.length == 2 ? int.tryParse(parts[1]) : null;
}
