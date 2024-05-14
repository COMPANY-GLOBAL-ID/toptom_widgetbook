import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final ButtonIconSize size;
  final ButtonType type;
  final ButtonColor color;
  final WidgetStateProperty<Color>? backgroundColor;
  final WidgetStateProperty<Color>? foregroundColor;
  final WidgetStateProperty<Color>? overlayColor;
  final double elevation;

  const ButtonIcon({
    super.key,
    required this.icon,
    this.onPressed,
    this.size = ButtonIconSize.m,
    this.type = ButtonType.primary,
    this.color = ButtonColor.primary,
    this.backgroundColor,
    this.foregroundColor,
    this.overlayColor,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll<double>(elevation),
        backgroundColor: backgroundColor ??
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return type.backgroundDisable(color, context);
              }
              return type.background(color, context);
            }),
        foregroundColor: foregroundColor ??
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return type.foregroundDisable(color, context);
              }
              if (states.contains(WidgetState.pressed)) {
                return type.foregroundPressed(color, context);
              }
              return type.foreground(color, context);
            }),
        overlayColor: overlayColor ??
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
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
            WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return type.foregroundDisable(color, context);
              }
              if (states.contains(WidgetState.pressed)) {
                return type.foregroundPressed(color, context);
              }
              return type.foreground(color, context);
            }),
        iconSize: WidgetStatePropertyAll<double>(size.iconSize()),
        minimumSize: const WidgetStatePropertyAll<Size>(Size(0, 0)),
        shadowColor: const WidgetStatePropertyAll<Color>(Colors.transparent),
        textStyle: WidgetStatePropertyAll<TextStyle>(size.textStyle(context)),
        padding:
            WidgetStatePropertyAll<EdgeInsetsGeometry>(size.padding(context)),
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
