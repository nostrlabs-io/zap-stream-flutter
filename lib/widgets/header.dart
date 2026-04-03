import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/widgets/avatar.dart';
import 'package:zap_stream_flutter/widgets/button.dart';
import 'package:zap_stream_flutter/pages/search.dart';

class HeaderWidget extends StatefulWidget {
  final VoidCallback? onConfigureStream;

  const HeaderWidget({super.key, this.onConfigureStream});

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
          Row(
            spacing: 12,
            children: [
              IconButton(
                onPressed: () => context.push("/search"),
                icon: Icon(Icons.search),
              ),
              if (ndk.accounts.isLoggedIn && widget.onConfigureStream != null)
                IconButton(
                  onPressed: widget.onConfigureStream,
                  icon: Icon(Icons.settings),
                ),
              LoginButtonWidget(),
            ],
          ),
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
      return Row(
        spacing: 8,
        children: [
          BasicButton(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: WARNING),
              borderRadius: DEFAULT_BR,
            ),
            Row(
              spacing: 4,
              children: [
                Icon(Icons.videocam),
                Text(
                  t.live.start,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onTap: (context) => context.push("/live"),
          ),

          GestureDetector(
            onTap:
                () => context.push(
                  "/p/${Nip19.encodePubKey(ndk.accounts.getPublicKey()!)}",
                ),
            child: AvatarWidget.pubkey(ndk.accounts.getPublicKey()!),
          ),
        ],
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
            children: [Text(t.button.login), Icon(Icons.login, size: 16)],
          ),
        ),
      );
    }
  }
}
