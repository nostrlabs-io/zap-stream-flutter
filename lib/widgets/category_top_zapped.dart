import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class CategoryTopZapped extends StatelessWidget {
  final String tag;
  final int? limit;

  const CategoryTopZapped({super.key, required this.tag, this.limit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.bolt, color: ZAP_1),
                alignment: PlaceholderAlignment.middle,
              ),
              TextSpan(
                text: " ${t.most_zapped_streamers}",
                style: TextStyle(color: LAYER_4, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          primary: false,
          child: FutureBuilder(
            future:
                ndk.requests
                    .query(
                      filters: [
                        Filter(
                          kinds: [30_311],
                          limit: 100,
                          tTags: [tag.toLowerCase()],
                        ),
                      ],
                    )
                    .future,
            builder: (context, state) {
              final aTags =
                  (state.data ?? [])
                      .map((e) => "30311:${e.pubKey}:${e.getDtag()}")
                      .toList();
              return RxFilter<Nip01Event>(
                Key("top-zapped:$tag:${aTags.length}"),
                filters: [
                  Filter(kinds: [9735], aTags: aTags),
                ],
                builder: (context, zaps) {
                  final parsedZaps =
                      zaps?.map((e) => ZapReceipt.fromEvent(e)) ?? [];
                  final topZapped = topZapReceiver(parsedZaps).entries
                      .sortedBy((e) => e.value.sum)
                      .reversed
                      .take(limit ?? 5);

                  return Row(
                    spacing: 16,
                    children:
                        topZapped
                            .map(
                              (e) => Row(
                                spacing: 8,
                                children: [
                                  AvatarWidget.pubkey(e.key),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 2,
                                    children: [
                                      Text(
                                        formatSats(e.value.sum, maxDigits: 0),
                                        style: TextStyle(
                                          color: ZAP_1,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ProfileNameWidget.pubkey(e.key),
                                    ],
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
