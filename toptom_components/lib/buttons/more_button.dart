import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/extends/num.dart';

import '../shadow.dart';

class MoreButton extends StatelessWidget {
  final Widget title;
  final VoidCallback? onPressed;
  final Color? color;
  final bool isActive;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  MoreButton({
    super.key,
    required this.title,
    this.onPressed,
    this.color,
    this.isActive = false,
    this.height,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isActive? Colors.grey.shade700 : Colors.white;
    Color foregroundColor = isActive? Colors.white : Colors.black;
    if(onPressed == null) {
      backgroundColor = Colors.grey.shade300;
      foregroundColor = Colors.grey.shade600;
    }
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: shadowApp,
          borderRadius: 5.br,
          color: backgroundColor
        ),
        height: height,
        padding: padding ?? 10.p,
        margin: margin ?? 2.5.p,
        child: IntrinsicHeight(
          child: IconTheme(
            data: IconThemeData(
                color: foregroundColor
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultTextStyle(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: foregroundColor
                  ),
                  child: title
                ),
                10.w,
                Container(
                  color: foregroundColor,
                  width: 1,
                ),
                10.w,
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}