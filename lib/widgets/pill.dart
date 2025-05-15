import 'package:flutter/material.dart';

class PillWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final void Function()? onTap;

  const PillWidget({
    super.key,
    required this.child,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final inner = Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: color,
      ),
      child: child,
    );
    return onTap != null ? GestureDetector(onTap: onTap, child: inner) : inner;
  }
}
