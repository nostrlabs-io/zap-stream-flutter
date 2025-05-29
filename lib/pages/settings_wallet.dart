import 'dart:developer' as developer;
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip01/bip340.dart';
import 'package:ndk/shared/nips/nip01/key_pair.dart';
import 'package:protocol_handler/protocol_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class SettingsWalletPage extends StatefulWidget {
  const SettingsWalletPage({super.key});

  @override
  State<StatefulWidget> createState() => _Inner();
}

const nwaHandlerUrl = "zswc://handler";

class _Inner extends State<SettingsWalletPage> with ProtocolListener {
  late final TextEditingController _uri;
  String? _error;

  KeyPair? _nwaKey;

  @override
  void initState() {
    _uri = TextEditingController();
    protocolHandler.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    protocolHandler.removeListener(this);
    super.dispose();
  }

  @override
  void onProtocolUrlReceived(String url) async {
    developer.log("NWA: $url");

    if (url == nwaHandlerUrl && _nwaKey != null) {
      final walletInfos = ndk.requests
          .query(
            filters: [
              Filter(kinds: [13194], pTags: [_nwaKey!.publicKey], limit: 5),
            ],
            explicitRelays: nwcRelays,
          )
          .stream
          .timeout(Duration(seconds: 15));

      final walletInfo =
          (await walletInfos.toList())
              .sortedBy((e) => e.createdAt)
              .reversed
              .firstOrNull;
      if (walletInfo == null) {
        setState(() {
          _error = t.settings.wallet.error.nwc_auth_event_not_found;
        });
        return;
      } else {
        final nwcUrl = Uri(
          scheme: "nostr+walletconnect",
          host: walletInfo.pubKey,
          queryParameters: {"relay": nwcRelays, "secret": _nwaKey!.privateKey},
        );
        _setWallet(WalletConfig(type: WalletType.nwc, data: nwcUrl.toString()));
      }
    }
  }

  Future<void> _start1TapFlow() async {
    final key = Bip340.generatePrivateKey();
    final url = Uri(
      scheme: "nostr+walletauth",
      host: key.publicKey,
      queryParameters: {
        "relay": nwcRelays,
        "name": "zap.stream",
        "request_methods": "pay_invoice get_info get_balance",
        "icon": "https://zap.stream/logo.png",
        "return_to": nwaHandlerUrl,
      },
    );
    setState(() {
      _error = null;
      _nwaKey = key;
    });
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  _setWallet(WalletConfig? cfg) {
    loginData.value = LoginAccount(
      type: loginData.value!.type,
      pubkey: loginData.value!.pubkey,
      privateKey: loginData.value!.privateKey,
      signerRelays: loginData.value!.signerRelays,
      wallet: cfg,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pubkey = ndk.accounts.getPublicKey();
    if (pubkey == null) return Text(t.settings.wallet.error.logged_out);

    return ValueListenableBuilder(
      valueListenable: loginData,
      builder: (context, state, child) {
        if (state?.wallet == null) {
          return Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Platform.isAndroid) ...[
                Text(
                  t.settings.wallet.connect_1tap,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                BasicButton.text(
                  t.button.connect,
                  onTap: (context) {
                    _start1TapFlow().onError((e, _) {
                      setState(() {
                        _error = e.toString();
                      });
                    });
                  },
                ),
              ],
              Text(
                t.settings.wallet.paste,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _uri,
                decoration: InputDecoration(
                  labelText: t.settings.wallet.connect_wallet,
                ),
              ),
              BasicButton.text(
                t.button.connect,
                onTap: (context) async {
                  try {
                    await ndk.nwc.connect(_uri.text);
                    final cfg = WalletConfig(
                      type: WalletType.nwc,
                      data: _uri.text,
                    );
                    _setWallet(cfg);

                    if (context.mounted) {
                      context.pop();
                    }
                  } catch (e) {
                    setState(() {
                      _error = e is String ? e : e.toString();
                    });
                  }
                },
              ),
              if (_error != null)
                Text(_error!, style: TextStyle(color: WARNING)),
            ],
          );
        } else {
          return FutureBuilder(
            future: () async {
              final wallet = await state!.getWallet();
              return await wallet?.getInfo();
            }(),
            builder: (context, state) {
              return Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wallet: ${state.data?.name ?? ""}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(text: t.settings.wallet.balance),
                        TextSpan(text: ": "),
                        TextSpan(
                          text: t.full_amount_sats(n: state.data?.balance ?? 0),
                        ),
                      ],
                    ),
                  ),
                  BasicButton.text(
                    t.settings.wallet.disconnect_wallet,
                    onTap: (context) {
                      _setWallet(null);
                      if (context.mounted) {
                        context.pop();
                      }
                    },
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }
}
