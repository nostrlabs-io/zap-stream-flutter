import 'package:flutter_test/flutter_test.dart';
import 'package:zap_stream_flutter/hls.dart';

void main() {
  test('only http(s) m3u8 can be handed to the video player', () {
    expect(isHlsUrl("https://api-uk.zap.stream/x/hls/live.m3u8"), isTrue);
    // a live event also advertises its MoQ egress, which the player cannot open
    expect(isHlsUrl("moq://api-uk.zap.stream:1443/"), isFalse);
    expect(isHlsUrl("https://api-uk.zap.stream/x/recording.mp4"), isFalse);
    expect(isHlsUrl("not a url at all"), isFalse);
  });
}
