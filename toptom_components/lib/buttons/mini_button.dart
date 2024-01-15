import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/extends/num.dart';

import '../shadow.dart';

class MiniButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final double? width;
  final double? height;
  final Color? color;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Alignment? alignment;

  const MiniButton({
    super.key,
    this.onPressed,
    this.height,
    this.width,
    this.color,
    this.child,
    this.padding,
    this.margin,
    this.alignment
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = color ?? Colors.white;
    Color foregroundColor = Colors.black;
    if(onPressed == null) {
      backgroundColor = Colors.grey.shade300;
      foregroundColor = Colors.grey.shade600;
    }
    return Padding(
      padding: margin ?? 0.p,
      child: InkWell(
        onTap: onPressed,
        child: SizedBox(
          width: width,
          height: height,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: shadowApp,
              color: backgroundColor,
              borderRadius: 5.br
            ),
            child: Align(
              alignment: alignment ?? Alignment.center,
              child: IconTheme(
                data: IconThemeData(
                    color: foregroundColor
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: foregroundColor
                  ),
                  child: Padding(
                    padding: padding ?? 0.p,
                    child: child,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}