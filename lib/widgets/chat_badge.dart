import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:ndk/entities.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/imgproxy.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ChatBadgeAwardWidget extends StatelessWidget {
  final Nip01Event event;
  final StreamEvent stream;

  const ChatBadgeAwardWidget({
    super.key,
    required this.event,
    required this.stream,
  });

  @override
  Widget build(BuildContext context) {
    final aTag = event.getFirstTag("a");
    if (aTag == null) return SizedBox();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: LAYER_1, borderRadius: DEFAULT_BR),
      child: FutureBuilder(
        future: ndk.requests.query(filters: [aTagToFilter(aTag)]).future,
        builder: (context, state) {
          final badge = state.data?.firstOrNull;
          final image = badge?.getFirstTag("image");
          final name = badge?.getFirstTag("name");
          final title = badge?.getFirstTag("description");

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Column(
                spacing: 8,
                children: [
                  if (image?.isNotEmpty ?? false)
                    ProxyImg(url: image, width: 64),
                  if (name?.isNotEmpty ?? false)
                    Text(
                      name!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  if (title?.isNotEmpty ?? false)
                    Text(
                      title!,
                      style: TextStyle(color: LAYER_5),
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
              Text(
                "${t.stream.chat.badge.awarded_to} ",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              ...event
                  .getTags("p")
                  .map((e) => ProfileWidget.pubkey(e, size: 20)),
            ],
          );
        },
      ),
    );
  }
}

class ChatBadgeWidget extends StatelessWidget {
  final Nip01Event badge;

  const ChatBadgeWidget({super.key, required this.badge});

  static Widget fromATag(String aTag, {Key? key}) {
    return FutureBuilder(
      future: ndk.requests.query(filters: [aTagToFilter(aTag)]).future,
      builder: (context, state) {
        final ev = state.data?.firstWhereOrNull(
          (e) => "${e.kind}:${e.pubKey}:${e.getDtag()}" == aTag,
        );
        if (ev == null) return SizedBox();
        return ChatBadgeWidget(badge: ev, key: key);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final image = badge.getFirstTag("image");
    if (image?.isEmpty ?? true) return SizedBox();

    return ProxyImg(url: image, resize: 24, height: 24);
  }
}
