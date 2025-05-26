import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/login.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class LoginInputPage extends StatefulWidget {
  const LoginInputPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginInputPage();
}

class _LoginInputPage extends State<LoginInputPage> {
  final TextEditingController _controller = TextEditingController();
  String? _error;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        TextFormField(
          controller: _controller,
          decoration: InputDecoration(labelText: "npub/nsec"),
        ),
        BasicButton.text(
          t.button.login,
          onTap: (context) async {
            try {
              if (_controller.text.startsWith("bunker://")) {
                // not supported yet in ndk
                setState(() {
                  _error = "Bunker login not supported yet";
                  _controller.clear();
                });
                return;
              }
              final keyData = bech32ToHex(_controller.text);
              if (keyData.isNotEmpty) {
                loginData.value = LoginAccount.nip19(_controller.text);
                context.go("/");
              } else {
                throw t.login.error.invalid_key;
              }
            } catch (e) {
              setState(() {
                _error = e.toString();
              });
            }
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
