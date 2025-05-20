import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/main.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HeaderWidget();
}

class _HeaderWidget extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => context.go("/"),
            child: SvgPicture.asset("assets/svg/logo.svg", height: 23),
          ),
          LoginButtonWidget(),
        ],
      ),
    );
  }
}

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (ndk.accounts.isLoggedIn) {
      return GestureDetector(
        onTap:
            () => context.go(
              "/p/${Nip19.encodePubKey(ndk.accounts.getPublicKey()!)}",
            ),
        child: AvatarWidget.pubkey(ndk.accounts.getPublicKey()!),
      );
    } else {
      return GestureDetector(
        onTap: () {
          context.push("/login");
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(color: FONT_COLOR),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Row(
            spacing: 8,
            children: [
              Text(t.button.login),
              Icon(Icons.login, size: 16),
            ],
          ),
        ),
      );
    }
  }
}
