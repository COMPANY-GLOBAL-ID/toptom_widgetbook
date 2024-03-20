import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final ButtonIconSize size;
  final ButtonType type;
  final ButtonColor color;

  const ButtonIcon({
    super.key,
    required this.icon,
    this.onPressed,
    this.size = ButtonIconSize.m,
    this.type = ButtonType.primary,
    this.color = ButtonColor.primary,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return type.backgroundDisable(color, context);
          }
          return type.background(color, context);
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return type.foregroundDisable(color, context);
          }
          if (states.contains(MaterialState.pressed)) {
            return type.foregroundPressed(color, context);
          }
          return type.foreground(color, context);
        }),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return type.backgroundPressed(color, context);
          }
          if (states.contains(MaterialState.disabled)) {
            return Colors.transparent;
          }
          return Colors.transparent;
        }),
        shape: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          late Color foregroundColor;

          if (states.contains(MaterialState.pressed)) {
            foregroundColor = type.borderColorPressed(color, context);
          } else if (states.contains(MaterialState.disabled)) {
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
        iconColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return type.foregroundDisable(color, context);
          }
          if (states.contains(MaterialState.pressed)) {
            return type.foregroundPressed(color, context);
          }
          return type.foreground(color, context);
        }),
        iconSize: MaterialStatePropertyAll<double>(size.iconSize()),
        minimumSize: const MaterialStatePropertyAll<Size>(Size(0, 0)),
        shadowColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
        textStyle: MaterialStatePropertyAll<TextStyle>(size.textStyle(context)),
        padding:
            MaterialStatePropertyAll<EdgeInsetsGeometry>(size.padding(context)),
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
