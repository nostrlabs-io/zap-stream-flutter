import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ndk/ndk.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';

class StreamCardsWidget extends StatelessWidget {
  final StreamEvent stream;

  const StreamCardsWidget({super.key, required this.stream});

  @override
  Widget build(BuildContext context) {
    return RxFilter<Nip01Event>(
      Key("stream:cards:${stream.aTag}"),
      filters: [
        Filter(kinds: [17_777], authors: [stream.info.host], limit: 1),
      ],
      builder: (context, state) {
        final cardList = state?.firstOrNull;
        if (cardList == null) return SizedBox();

        final cardIds = cardList.getTags("a");
        return RxFilter<Nip01Event>(
          Key("stream:cards:${stream.aTag}:cards"),
          filters: [
            Filter(
              kinds: [37_777],
              authors: [stream.info.host],
              dTags: cardIds.map((i) => i.split(":").last).toList(),
            ),
          ],
          builder: (context, state) {
            final cards = state ?? [];

            return Column(
              spacing: 8,
              children: cards.map((c) => _streamCard(context, c)).toList(),
            );
          },
        );
      },
    );
  }

  Widget _streamCard(BuildContext context, Nip01Event card) {
    final title = card.getFirstTag("title") ?? card.getFirstTag("subject");
    final image = card.getFirstTag("image");
    final link = card.getFirstTag("r");

    return Container(
      padding: EdgeInsets.all(8),
      width: double.maxFinite,
      decoration: BoxDecoration(color: LAYER_2, borderRadius: DEFAULT_BR),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title?.isNotEmpty ?? false)
            Center(
              child: Text(
                title!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          if (image?.isNotEmpty ?? false)
            Center(
              child:
                  link != null
                      ? GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(link));
                        },
                        child: ProxyImg(url: link, placeholderSize: 40),
                      )
                      : ProxyImg(url: link, placeholderSize: 40),
            ),
          MarkdownBody(
            data: card.content,
            onTapLink: (text, href, title) {
              if (href != null) {
                launchUrl(Uri.parse(href));
              }
            },
          ),
        ],
      ),
    );
  }
}
