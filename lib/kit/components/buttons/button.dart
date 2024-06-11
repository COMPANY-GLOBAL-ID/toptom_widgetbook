import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ButtonWidget extends StatelessWidget {
  final Widget? child;
  final ButtonSize size;
  final ButtonType type;
  final ButtonColor color;
  final VoidCallback? onPressed;
  final WidgetStateProperty<Color>? backgroundColor;
  final WidgetStateProperty<Color>? foregroundColor;
  final WidgetStateProperty<Color>? overlayColor;
  final double elevation;
  final bool? isLoading;

  const ButtonWidget(
      {super.key,
      this.size = ButtonSize.m,
      this.type = ButtonType.primary,
      this.color = ButtonColor.primary,
      this.child,
      this.onPressed,
      this.backgroundColor,
      this.foregroundColor,
      this.overlayColor,
      this.elevation = 0,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading == true ? () {} : onPressed,
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll<double>(elevation),
        backgroundColor: backgroundColor ??
            WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return type.backgroundDisable(color, context);
              }
              return type.background(color, context);
            }),
        foregroundColor: foregroundColor ??
            WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return type.foregroundDisable(color, context);
              }
              if (states.contains(WidgetState.pressed)) {
                return type.foregroundPressed(color, context);
              }
              return type.foreground(color, context);
            }),
        overlayColor: overlayColor ??
            WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return type.backgroundPressed(color, context);
              }
              if (states.contains(WidgetState.disabled)) {
                return Colors.transparent;
              }
              return Colors.transparent;
            }),
        shape: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          late Color foregroundColor;
          if (states.contains(WidgetState.pressed)) {
            foregroundColor = type.borderColorPressed(color, context);
          } else if (states.contains(WidgetState.disabled)) {
            foregroundColor = type.disableBorderColor(color, context);
          } else {
            foregroundColor = type.borderColor(color, context);
          }
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: foregroundColor,
              width: 1,
            ),
          );
        }),
        iconColor: foregroundColor ??
            WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return type.foregroundDisable(color, context);
              }
              if (states.contains(WidgetState.pressed)) {
                return type.foregroundPressed(color, context);
              }
              return type.foreground(color, context);
            }),
        iconSize: WidgetStatePropertyAll<double>(size.iconSize()),
        textStyle: WidgetStatePropertyAll<TextStyle>(size.textStyle(context)),
        padding:
            WidgetStatePropertyAll<EdgeInsetsGeometry>(size.padding(context)),
      ),
      child: isLoading == true
          ? CupertinoActivityIndicator(
              color: type.foreground(color, context),
            )
          : child,
    );
  }
}
