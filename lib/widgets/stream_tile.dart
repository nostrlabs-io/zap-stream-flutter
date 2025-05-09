import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class StreamTileWidget extends StatelessWidget {
  final StreamEvent stream;

  const StreamTileWidget(this.stream, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          "/e/${Nip19.encodeNoteId(stream.event.id)}",
          extra: stream,
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: DEFAULT_BR, color: LAYER_1),
            clipBehavior: Clip.antiAlias,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Stack(
                children: [
                  Center(
                    child: CachedNetworkImage(
                      imageUrl: proxyImg(context, stream.info.image ?? ""),
                      fit: BoxFit.cover,
                      placeholder:
                          (ctx, url) => SvgPicture.asset(
                            "assets/svg/logo.svg",
                            height: 100,
                          ),
                      errorWidget:
                          (context, url, error) => SvgPicture.asset(
                            "assets/svg/logo.svg",
                            height: 100,
                          ),
                    ),
                  ),
                  if (stream.info.status != null)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: PillWidget(
                        color: switch (stream.info.status) {
                          StreamStatus.live => Theme.of(context).highlightColor,
                          _ => LAYER_3,
                        },
                        child: Text(
                          stream.info.status!.name.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  if (stream.info.participants != null)
                    Positioned(
                      right: 8,
                      bottom: 8,
                      child: PillWidget(
                        color: LAYER_1.withAlpha(200),
                        child: Text(
                          "${stream.info.participants} viewers",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Row(
            spacing: 8,
            children: [
              AvatarWidget.pubkey(stream.info.host),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stream.info.title ?? "",
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    ProfileNameWidget.pubkey(
                      stream.info.host,
                      style: TextStyle(color: LAYER_4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
