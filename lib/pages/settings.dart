import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/widgets/button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        Text(t.button.settings, style: TextStyle(fontSize: 24)),
        BasicButton.text(
          t.settings.button_profile,
          onTap: (context) => context.push("/settings/profile"),
        ),
        BasicButton.text(
          t.settings.button_wallet,
          onTap: (context) => context.push("/settings/wallet"),
        ),
      ],
    );
  }
}
