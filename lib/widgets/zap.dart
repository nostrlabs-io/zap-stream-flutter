import 'package:clipboard/clipboard.dart';
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

  const ZapWidget({super.key, required this.pubkey, this.target});

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

  Future<void> _loadZap() async {
    final profile = await ndk.metadata.loadMetadata(widget.pubkey);
    if (profile?.lud16 == null) {
      throw "No lightning address found";
    }
    final signer = ndk.accounts.getLoggedAccount()?.signer;

    final zapRequest =
        signer != null
            ? await ndk.zaps.createZapRequest(
              amountSats: _amount!,
              signer: signer,
              pubKey: widget.pubkey,
              eventId: widget.target?.id,
              addressableId:
                  widget.target != null && widget.target!.kind >= 30_000 && widget.target!.kind < 40_000
                      ? "${widget.target!.kind}:${widget.target!.pubKey}:${widget.target!.getDtag()!}"
                      : null,
              relays: defaultRelays,
              comment: _comment.text.isNotEmpty ? _comment.text : null,
            )
            : null;

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
          color: n == _amount ? LAYER_2 : LAYER_1,
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
