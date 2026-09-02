import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk_flutter/ndk_flutter.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        if (Platform.isAndroid)
          FutureBuilder(
            future: const Nip55Signer().isAppInstalled(),
            builder: (ctx, state) {
              if (state.data ?? false) {
                return BasicButton.text(
                  t.login.amber,
                  onTap: (context) async {
                    final result = await const Nip55Signer().login();
                    if (result != null) {
                      loginData.value = LoginAccount.externalPublicKeyHex(
                        result.pubkey,
                        package: result.package,
                      );
                      if (ctx.mounted) {
                        ctx.go("/");
                      }
                    }
                  },
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        BasicButton.text(t.login.key, onTap: (context) => context.push("/login/key")),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 1,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: LAYER_2)),
          ),
        ),
        BasicButton.text(
          t.login.create,
          onTap: (context) => context.push("/login/new"),
        ),
      ],
    );
  }
}
