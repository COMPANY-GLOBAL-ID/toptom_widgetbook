import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mini_button.dart';

class RectangleButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? size;
  final Widget? child;
  final Color? color;
  final Alignment? alignment;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const RectangleButton({
    super.key,
    this.onPressed,
    this.size,
    this.color,
    this.child,
    this.alignment,
    this.padding,
    this.margin
  });

  @override
  Widget build(BuildContext context) {
    return MiniButton(
      onPressed: onPressed,
      width: size ?? 25,
      height: size ?? 25,
      color: color,
      alignment: alignment,
      padding: padding,
      margin: margin,
      child: child,
    );
  }

}