import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LayoutScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const LayoutScreen(this.navigationShell, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      backgroundColor: Colors.black,
    );
  }
}
