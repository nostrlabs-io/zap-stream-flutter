import 'package:amberflutter/amberflutter.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        FutureBuilder(
          future: Amberflutter().isAppInstalled(),
          builder: (ctx, state) {
            if (state.data ?? false) {
              return BasicButton.text(
                "Login with Amber",
                onTap: () async {
                  final amber = Amberflutter();
                  final result = await amber.getPublicKey();
                  if (result['signature'] != null) {
                    final key = bech32ToHex(result['signature']);
                    loginData.value = LoginAccount.externalPublicKeyHex(key);
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
        BasicButton.text(
          "Login with Key",
          onTap: () => context.push("/login/key"),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: 1,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: LAYER_2)),
          ),
        ),
        BasicButton.text(
          "Create Account",
          onTap: () => context.push("/login/new"),
        ),
      ],
    );
  }
}
