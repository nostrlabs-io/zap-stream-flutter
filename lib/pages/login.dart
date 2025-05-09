import 'package:amberflutter/amberflutter.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        spacing: 10,
        children: [
          Image.asset("assets/logo.png", height: 150),
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
                      final key = Nip19.decode(result['signature']);
                      loginData.value = Account.externalPublicKeyHex(key);
                      ctx.go("/");
                    }
                  },
                );
              } else {
                return SizedBox.shrink();
              }
            },
          ),
          /*BasicButton.text("Login with Key"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 1,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: LAYER_1)),
            ),
          ),
          Text("Create Account"),*/
        ],
      ),
    );
  }
}
