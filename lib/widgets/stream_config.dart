import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/entities.dart';
import 'package:zap_stream_flutter/api.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/pill.dart';

class StreamConfigWidget extends StatefulWidget {
  final ZapStreamApi api;
  final AccountInfo account;
  final bool? hideEndpointConfig;
  final Nip01Event? currentStream;

  const StreamConfigWidget({
    super.key,
    required this.api,
    required this.account,
    this.hideEndpointConfig,
    this.currentStream,
  });

  @override
  State<StatefulWidget> createState() => _StreamConfigWidget();
}

class _StreamConfigWidget extends State<StreamConfigWidget> {
  late bool _nsfw;
  late final TextEditingController _title;
  late final TextEditingController _summary;
  late final TextEditingController _tags;

  @override
  void initState() {
    _title = TextEditingController(text: widget.account.details?.title);
    _summary = TextEditingController(text: widget.account.details?.summary);
    _tags = TextEditingController(
      text: widget.account.details?.tags?.join(",") ?? "irl",
    );
    _nsfw = widget.account.details?.contentWarning?.isNotEmpty ?? false;
    super.initState();
  }

  Widget _variantWidget(String cap) {
    if (cap.startsWith("variant:")) {
      final caps = cap.split(":");
      return PillWidget(
        color: LAYER_3,
        child: Text(caps[1].replaceAll("h", "p")),
      );
    } else if (cap.startsWith("dvr:")) {
      return PillWidget(color: LAYER_3, child: Text("Recording"));
    }
    return PillWidget(color: LAYER_3, child: Text(cap));
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: loginData,
      builder: (context, state, _) {
        final endpoint = widget.account.endpoints.firstWhereOrNull(
          (e) => e.name == state?.streamEndpoint,
        );
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Text(t.live.configure_stream, style: TextStyle(fontSize: 24)),
              if (!(widget.hideEndpointConfig ?? false))
                Row(
                  spacing: 8,
                  children: [
                    Icon(Icons.power),
                    Expanded(
                      child: DropdownButton<IngestEndpoint>(
                        value: endpoint,
                        hint: Text(t.live.endpoint),
                        items:
                            widget.account.endpoints
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e.name),
                                  ),
                                )
                                .toList(),
                        onChanged: (x) {
                          if (x != null) {
                            loginData.configure(streamEndpoint: x.name);
                          }
                        },
                      ),
                    ),
                    if (endpoint != null)
                      Text(
                        "${t.full_amount_sats(n: endpoint.cost.rate)}/${endpoint.cost.unit}",
                      ),
                  ],
                ),
              if (endpoint != null && !(widget.hideEndpointConfig ?? false))
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 8,
                    children:
                        endpoint.capabilities
                            .map((e) => _variantWidget(e))
                            .toList(),
                  ),
                ),

              TextField(
                controller: _title,
                decoration: InputDecoration(labelText: t.live.title),
              ),
              TextField(
                controller: _summary,
                decoration: InputDecoration(labelText: t.live.summary),
                minLines: 3,
                maxLines: 5,
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    _nsfw = !_nsfw;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: WARNING),
                    borderRadius: DEFAULT_BR,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _nsfw,
                        onChanged: (v) {
                          setState(() {
                            _nsfw = !_nsfw;
                          });
                        },
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              t.live.nsfw,
                              style: TextStyle(
                                color: WARNING,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(t.live.nsfw_description),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              BasicButton.text(
                t.button.save,
                onTap: (context) async {
                  await widget.api.updateDefaultStreamInfo(
                    id: widget.currentStream?.getFirstTag("d"),
                    title: _title.text,
                    summary: _summary.text,
                    contentWarning: _nsfw ? "nsfw" : null,
                    tags: _tags.text.split(","),
                  );
                  if (context.mounted) {
                    context.pop();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
