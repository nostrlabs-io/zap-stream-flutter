import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/rx_filter.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/nostr_text.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class NoteEmbedWidget extends StatelessWidget {
  final String link;

  const NoteEmbedWidget({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    final entity = decodeBech32ToTLVEntity(link);

    return RxFilter<Nip01Event>(
      Key("embeded-note:$link"),
      filters: [entity.toFilter()],
      builder: (context, data) {
        final note = data != null && data.isNotEmpty ? data.first : null;
        if (note == null) return SizedBox.shrink();

        final author = switch (note.kind) {
          30_311 => StreamEvent(note).info.host,
          _ => note.pubKey,
        };
        return PillWidget(
          onTap: () {
            // redirect to the stream if its a live stream link
            if (note.kind == 30_311) {
              context.push("/e/$link", extra: StreamEvent(note));
              return;
            }
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return SingleChildScrollView(child: _NotePreview(note: note));
              },
            );
          },
          color: LAYER_3,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.link, size: 16),
              ProfileLoaderWidget(author, (context, state) {
                final profile = state.data ?? Metadata(pubKey: note.pubKey);
                return Text(switch (entity.kind) {
                  30_023 => t.embed.article_by(
                    name: ProfileNameWidget.nameFromProfile(profile),
                  ),
                  30_311 => t.embed.live_stream_by(
                    name: ProfileNameWidget.nameFromProfile(profile),
                  ),
                  _ => t.embed.note_by(
                    name: ProfileNameWidget.nameFromProfile(profile),
                  ),
                });
              }),
            ],
          ),
        );
      },
    );
  }
}

class _NotePreview extends StatelessWidget {
  final Nip01Event note;

  const _NotePreview({required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: LAYER_1, borderRadius: DEFAULT_BR),
      child: Column(
        spacing: 8,
        children: [
          ProfileWidget.pubkey(note.pubKey),
          NoteText(event: note, embedMedia: true),
        ],
      ),
    );
  }
}
