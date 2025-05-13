import 'package:clipboard/clipboard.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ndk/domain_layer/usecases/lnurl/lnurl.dart';
import 'package:ndk/ndk.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/widgets/profile.dart';

class ZapWidget extends StatefulWidget {
  final String pubkey;
  final Nip01Event? target;
  final List<Nip01Event>? otherTargets;
  final List<List<String>>? zapTags;

  const ZapWidget({
    super.key,
    required this.pubkey,
    this.target,
    this.zapTags,
    this.otherTargets,
  });

  @override
  State<StatefulWidget> createState() => _ZapWidget();
}

class _ZapWidget extends State<ZapWidget> {
  final TextEditingController _comment = TextEditingController();
  String? _error;
  String? _pr;
  int? _amount;
  final _zapAmounts = [
    50,
    100,
    200,
    500,
    1000,
    5000,
    10000,
    50000,
    100000,
    1000000,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Text(
                "Zap",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ProfileNameWidget.pubkey(
                widget.pubkey,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          if (_pr == null) ..._inputs(),
          if (_pr != null) ..._invoice(),
        ],
      ),
    );
  }

  List<Widget> _inputs() {
    return [
      GridView.builder(
        shrinkWrap: true,
        itemCount: _zapAmounts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (ctx, idx) => _zapAmount(_zapAmounts[idx]),
      ),
      TextFormField(
        controller: _comment,
        decoration: InputDecoration(labelText: "Comment"),
      ),
      BasicButton.text(
        "Zap",
        decoration: BoxDecoration(color: LAYER_3, borderRadius: DEFAULT_BR),
        onTap: () {
          try {
            _loadZap();
          } catch (e) {
            setState(() {
              _error = e.toString();
            });
          }
        },
      ),
      if (_error != null) Text(_error!),
    ];
  }

  List<Widget> _invoice() {
    return [
      QrImageView(
        data: _pr!,
        size: 256,
        backgroundColor: Colors.transparent,
        dataModuleStyle: QrDataModuleStyle(
          dataModuleShape: QrDataModuleShape.square,
          color: FONT_COLOR,
        ),
        eyeStyle: QrEyeStyle(eyeShape: QrEyeShape.square, color: FONT_COLOR),
      ),
      GestureDetector(
        onTap: () async {
          await FlutterClipboard.copy(_pr!);
        },
        child: Text(_pr!, overflow: TextOverflow.ellipsis),
      ),
      BasicButton.text(
        "Open in Wallet",
        onTap: () async {
          try {
            await launchUrlString("lightning:${_pr!}");
          } catch (e) {
            setState(() {
              _error = e is String ? e : e.toString();
            });
          }
        },
      ),
      if (_error != null) Text(_error!),
    ];
  }

  Future<ZapRequest?> _makeZap() async {
    final signer = ndk.accounts.getLoggedAccount()?.signer;
    if (signer == null) return null;

    var relays = defaultRelays;
    // if target event has relays tag, use that for zap
    if (widget.target?.tags.any((t) => t[0] == "relays") ?? false) {
      relays = widget.target!.tags.firstWhere((t) => t[0] == "relays").slice(1);
    }
    final amount = _amount! * 1000;

    var tags = [
      ["relays", ...relays],
      ["amount", amount.toString()],
      ["p", widget.pubkey],
    ];

    // tag targets for zap request
    for (final t in [
      ...(widget.target != null ? [widget.target!] : []),
      ...(widget.otherTargets != null ? widget.otherTargets! : []),
    ]) {
      if (t.kind >= 30_000 && t.kind < 40_000) {
        tags.add(["a", "${t.kind}:${t.pubKey}:${t.getDtag()!}"]);
      } else {
        tags.add(["e", t.id]);
      }
    }
    if (widget.zapTags != null) {
      tags.addAll(widget.zapTags!);
    }
    var event = ZapRequest(
      pubKey: signer.getPublicKey(),
      tags: tags,
      content: _comment.text,
    );
    await signer.sign(event);
    return event;
  }

  Future<void> _loadZap() async {
    final profile = await ndk.metadata.loadMetadata(widget.pubkey);
    if (profile?.lud16 == null) {
      throw "No lightning address found";
    }

    final zapRequest = await _makeZap();
    final invoice = await ndk.zaps.fetchInvoice(
      lud16Link: Lnurl.getLud16LinkFromLud16(profile!.lud16!)!,
      amountSats: _amount!,
      zapRequest: zapRequest,
    );

    setState(() {
      _pr = invoice?.invoice;
    });
  }

  Widget _zapAmount(int n) {
    return GestureDetector(
      onTap:
          () => setState(() {
            _amount = n;
          }),
      child: Container(
        decoration: BoxDecoration(
          color: n == _amount ? LAYER_4 : LAYER_3,
          borderRadius: DEFAULT_BR,
        ),
        alignment: AlignmentDirectional.center,
        child: Text(
          formatSats(n),
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
