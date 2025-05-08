import 'package:flutter/material.dart';

class PillWidget extends StatelessWidget {
  final Widget child;
  final Color? color;

  const PillWidget({super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: color,
      ),
      child: child,
    );
  }
}
