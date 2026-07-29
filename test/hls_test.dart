import 'package:flutter_test/flutter_test.dart';
import 'package:zap_stream_flutter/hls.dart';

const _master = '''
#EXTM3U
#EXT-X-VERSION:6
#EXT-X-MEDIA:TYPE=AUDIO,URI="0e74d67e-fb65-4a78-acf3-79a6085ad99a/live.m3u8",GROUP-ID="0e74d67e-fb65-4a78-acf3-79a6085ad99a",NAME="audio",DEFAULT=YES,AUTOSELECT=YES,CHANNELS="2"
#EXT-X-STREAM-INF:BANDWIDTH=8000000,CODECS="avc1.4d0033,mp4a.40.2",RESOLUTION=1920x1080,FRAME-RATE=20,AUDIO="0e74d67e-fb65-4a78-acf3-79a6085ad99a",CLOSED-CAPTIONS=NONE
2e4ea927-470b-4be6-96ed-a9789bd2d964/live.m3u8?vt=5fmhy3lionwxg
#EXT-X-STREAM-INF:BANDWIDTH=1500000,CODECS="avc1.4d0033,mp4a.40.2",RESOLUTION=854x480,FRAME-RATE=20,AUDIO="0e74d67e-fb65-4a78-acf3-79a6085ad99a",CLOSED-CAPTIONS=NONE
8169179d-e8df-4713-ac42-774795558633/live.m3u8?vt=5fmhy3lionwxg
#EXT-X-STREAM-INF:BANDWIDTH=4000000,CODECS="avc1.4d0033,mp4a.40.2",RESOLUTION=1280x720,FRAME-RATE=20,AUDIO="0e74d67e-fb65-4a78-acf3-79a6085ad99a",CLOSED-CAPTIONS=NONE
d8b108d1-045e-44ea-a4b5-84dfa5d52871/live.m3u8?vt=5fmhy3lionwxg
''';

void main() {
  final base = Uri.parse(
    "https://api-uk.zap.stream/537a365c-f1ec-44ac-af10-22d14a7319fb/hls/live.m3u8",
  );

  test('parses renditions of a live multivariant playlist', () {
    final variants = parseHlsVariants(_master, base);

    expect(variants.length, 3);
    // highest first, regardless of playlist order
    expect(variants.map((v) => v.name), ["1080p", "720p", "480p"]);
    expect(variants.first.bandwidth, 8000000);
    expect(
      variants.first.url,
      "https://api-uk.zap.stream/537a365c-f1ec-44ac-af10-22d14a7319fb/hls/2e4ea927-470b-4be6-96ed-a9789bd2d964/live.m3u8?vt=5fmhy3lionwxg",
    );
  });

  test('audio rendition is not offered as a video quality', () {
    final variants = parseHlsVariants(_master, base);

    expect(
      variants.any(
        (v) => v.url.contains("0e74d67e-fb65-4a78-acf3-79a6085ad99a"),
      ),
      isFalse,
    );
  });

  test('a media playlist has no renditions', () {
    final variants = parseHlsVariants(
      "#EXTM3U\n#EXT-X-TARGETDURATION:2\n#EXTINF:2.0,\n1.m4s\n",
      base,
    );

    expect(variants, isEmpty);
  });

  test('only http(s) m3u8 can be handed to the video player', () {
    expect(isHlsUrl("https://api-uk.zap.stream/x/hls/live.m3u8"), isTrue);
    // a live event also advertises its MoQ egress, which the player cannot open
    expect(isHlsUrl("moq://api-uk.zap.stream:1443/"), isFalse);
    expect(isHlsUrl("https://api-uk.zap.stream/x/recording.mp4"), isFalse);
  });
}
