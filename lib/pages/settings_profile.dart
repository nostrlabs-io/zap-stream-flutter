import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/avatar_upload.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class SettingsProfilePage extends StatelessWidget {
  final TextEditingController _picture = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _about = TextEditingController();
  final TextEditingController _nip5 = TextEditingController();
  final TextEditingController _lud16 = TextEditingController();
  final ValueNotifier<bool> _loading = ValueNotifier(false);

  SettingsProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pubkey = ndk.accounts.getPublicKey();
    if (pubkey == null) return Text(t.profile.edit.error.logged_out);

    return FutureBuilder(
      future: ndk.metadata.loadMetadata(pubkey),
      builder: (context, state) {
        if (state.hasData) {
          _name.text = state.data!.name ?? "";
          _about.text = state.data!.about ?? "";
          _nip5.text = state.data!.nip05 ?? "";
          _lud16.text = state.data!.lud16 ?? "";
          _picture.text = state.data!.picture ?? "";
        }
        return ValueListenableBuilder(
          valueListenable: _loading,
          builder: (context, v, _) {
            return Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: AvatarUpload(
                    key: Key("avatar:${_picture.text}"),
                    avatar: _picture.text.isEmpty ? null : _picture.text,
                    onUpload: (i) {
                      _picture.text = i;
                    },
                  ),
                ),
                TextField(
                  controller: _name,
                  readOnly: v,
                  decoration: InputDecoration(
                    labelText: t.profile.edit.display_name,
                    fillColor: LAYER_1,
                    filled: true,
                  ),
                ),
                TextField(
                  controller: _about,
                  readOnly: v,
                  decoration: InputDecoration(
                    labelText: t.profile.edit.about,
                    fillColor: LAYER_1,
                    filled: true,
                  ),
                ),
                TextField(
                  controller: _nip5,
                  readOnly: v,
                  decoration: InputDecoration(
                    labelText: t.profile.edit.nip05,
                    fillColor: LAYER_1,
                    filled: true,
                  ),
                ),
                TextField(
                  controller: _lud16,
                  readOnly: v,
                  decoration: InputDecoration(
                    labelText: t.profile.edit.lud16,
                    fillColor: LAYER_1,
                    filled: true,
                  ),
                ),
                BasicButton.text(
                  t.button.save,
                  disabled: v,
                  onTap: (context) async {
                    _loading.value = true;
                    try {
                      final newMeta = Metadata(
                        pubKey: pubkey,
                        name: _name.text.isEmpty ? null : _name.text,
                        about: _about.text.isEmpty ? null : _about.text,
                        picture: _picture.text.isEmpty ? null : _picture.text,
                        nip05: _nip5.text.isEmpty ? null : _nip5.text,
                        lud16: _lud16.text.isEmpty ? null : _lud16.text,
                      );
                      await ndk.metadata.broadcastMetadata(newMeta);
                      if (context.mounted) {
                        context.pop();
                      }
                    } finally {
                      _loading.value = false;
                    }
                  },
                ),
                if (v) Center(child: CircularProgressIndicator()),
              ],
            );
          },
        );
      },
    );
  }
}
