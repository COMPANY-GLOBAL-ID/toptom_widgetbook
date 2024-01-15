import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/extends/num.dart';

import '../shadow.dart';

class CircleButton extends StatelessWidget {
  final Widget child;
  final double? size;
  final VoidCallback? onPressed;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  const CircleButton({
    super.key,
    this.size = 50,
    required this.child,
    this.onPressed,
    this.margin,
    this.padding
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Colors.white;
    Color foregroundColor = Colors.black;
    if(onPressed == null) {
      backgroundColor = Colors.grey.shade300;
      foregroundColor = Colors.grey.shade600;
    }
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Padding(
        padding: margin ?? 0.p,
        child: SizedBox(
          width: size,
          height: size,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: shadowApp,
              color: backgroundColor,
              borderRadius: 999.br
            ),
            child: ClipOval(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: padding ?? 0.p,
                  child: IconTheme(
                    data: IconThemeData(
                      color: foregroundColor
                    ),
                    child: DefaultTextStyle(
                      style: TextStyle(
                        color: foregroundColor
                      ),
                      child: child
                    ),
                  ),
                )
              ),
            ),
          ),
        ),
      ),
    );
  }

}