import 'package:flutter/material.dart';
import 'package:zap_stream_flutter/theme.dart';

class BasicButton extends StatelessWidget {
  final Widget? child;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  const BasicButton(
    this.child, {
    super.key,
    this.decoration,
    this.padding,
    this.margin,
    this.onTap,
  });

  static text(
    String text, {
    BoxDecoration? decoration,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    void Function()? onTap,
    double? fontSize,
  }) {
    return BasicButton(
      Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: decoration,
      padding: padding ?? EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      margin: margin,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultBr = BorderRadius.all(Radius.circular(100));
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration:
            decoration ??
            BoxDecoration(color: LAYER_2, borderRadius: defaultBr),
        child: Center(child: child),
      ),
    );
  }
}
