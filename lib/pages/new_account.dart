import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip01/bip340.dart';
import 'package:ndk/shared/nips/nip01/key_pair.dart';
import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class NewAccountPage extends StatefulWidget {
  const NewAccountPage({super.key});

  @override
  State<StatefulWidget> createState() => _NewAccountPage();
}

class _NewAccountPage extends State<NewAccountPage> {
  final TextEditingController _name = TextEditingController();
  String? _avatar;
  String? _error;
  final KeyPair _privateKey = Bip340.generatePrivateKey();

  Future<void> _uploadAvatar() async {
    ndk.accounts.loginPrivateKey(
      pubkey: _privateKey.publicKey,
      privkey: _privateKey.privateKey!,
    );

    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file != null) {
      final upload = await ndk.blossom.uploadBlob(
        serverUrls: ["https://nostr.download"],
        data: await file.readAsBytes(),
      );
      setState(() {
        _avatar = upload.first.descriptor!.url;
      });
    }
  }

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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        GestureDetector(
          onTap: () {
            _uploadAvatar().catchError((e) {
              setState(() {
                if (e is String) {
                  _error = e;
                }
              });
            });
          },
          child: Container(
            width: 200,
            height: 200,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              color: Color.fromARGB(100, 50, 50, 50),
            ),
            child:
                _avatar == null
                    ? Center(child: Text("Upload Avatar"))
                    : CachedNetworkImage(imageUrl: _avatar!),
          ),
        ),
        TextField(
          controller: _name,
          decoration: InputDecoration(labelText: "Username"),
        ),
        BasicButton.text(
          "Login",
          onTap: () {
            _login()
                .then((_) {
                  loginData.value = LoginAccount.privateKeyHex(
                    _privateKey.privateKey!,
                  );
                  context.go("/");
                })
                .catchError((e) {
                  setState(() {
                    if (e is String) {
                      _error = e;
                    }
                  });
                });
          },
        ),
        if (_error != null)
          Text(
            _error!,
            style: TextStyle(color: WARNING, fontWeight: FontWeight.bold),
          ),
      ],
    );
  }
}
