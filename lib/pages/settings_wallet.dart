import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

class _Inner extends State<SettingsWalletPage> {
  late final TextEditingController _uri;
  String? _error;

  @override
  void initState() {
    _uri = TextEditingController();
    super.initState();
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
            spacing: 8,
            children: [
              TextField(
                controller: _uri,
                decoration: InputDecoration(labelText: t.settings.wallet.connect_wallet),
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
                    loginData.value = LoginAccount(
                      type: loginData.value!.type,
                      pubkey: loginData.value!.pubkey,
                      privateKey: loginData.value!.privateKey,
                      signerRelays: loginData.value!.signerRelays,
                      wallet: cfg,
                    );
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
          return BasicButton.text(
            t.settings.wallet.disconnect_wallet,
            onTap: (context) {
              loginData.value = LoginAccount(
                type: loginData.value!.type,
                pubkey: loginData.value!.pubkey,
                privateKey: loginData.value!.privateKey,
                signerRelays: loginData.value!.signerRelays,
                wallet: null,
              );
              if (context.mounted) {
                context.pop();
              }
            },
          );
        }
      },
    );
  }
}
