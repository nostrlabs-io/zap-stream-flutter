import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip01/bip340.dart';
import 'package:ndk/shared/nips/nip01/key_pair.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/avatar_upload.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class NewAccountPage extends StatefulWidget {
  const NewAccountPage({super.key});

  @override
  State<StatefulWidget> createState() => _NewAccountPage();
}

class _NewAccountPage extends State<NewAccountPage> {
  final TextEditingController _name = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  String? _avatar;
  String? _error;
  bool _loading = false;
  final KeyPair _privateKey = Bip340.generatePrivateKey();

  Future<void> _login() async {
    if (ndk.accounts.isNotLoggedIn) {
      ndk.accounts.loginPrivateKey(
        pubkey: _privateKey.publicKey,
        privkey: _privateKey.privateKey!,
      );
    }

    await ndk.metadata.broadcastMetadata(
      Metadata(
        pubKey: _privateKey.publicKey,
        name: _name.text,
        picture: _avatar,
        lud16: "${_privateKey.publicKey}@zap.stream",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        AvatarUpload(
          onUploadStart: () async {
            if (ndk.accounts.isNotLoggedIn) {
              ndk.accounts.loginPrivateKey(
                pubkey: _privateKey.publicKey,
                privkey: _privateKey.privateKey!,
              );
            }
          },
          onUpload: (i) {
            setState(() {
              _avatar = i;
            });
          },
        ),
        TextField(
          controller: _name,
          readOnly: _loading,
          focusNode: _nameFocus,
          decoration: InputDecoration(labelText: t.login.username),
        ),
        ValueListenableBuilder(
          valueListenable: _name,
          builder: (context, value, child) {
            return BasicButton.text(
              t.button.login,
              disabled: _loading || value.text.isEmpty,
              onTap: (context) {
                setState(() {
                  _loading = true;
                  _nameFocus.unfocus();
                });
                _login()
                    .then((_) {
                      loginData.value = LoginAccount.privateKeyHex(
                        _privateKey.privateKey!,
                      );
                      if (context.mounted) {
                        context.go("/");
                      }
                    })
                    .catchError((e) {
                      setState(() {
                        _loading = false;
                        _error = e is String ? e : e.toString();
                      });
                    });
              },
            );
          },
        ),
        if (_loading) CircularProgressIndicator(),
        if (_error != null)
          Text(
            _error!,
            style: TextStyle(color: WARNING, fontWeight: FontWeight.bold),
          ),
      ],
    );
  }
}
