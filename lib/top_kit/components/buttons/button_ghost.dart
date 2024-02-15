import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

class ButtonGhost extends StatelessWidget {
  const ButtonGhost({
    Key? key,
    required this.title,
    this.onPressed,
    this.textStyle,
    this.buttonStyle,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(
        title,
        style: onPressed != null
            ? TextStylesKit.buttonXl.copyWith(
                color: ColorKit.colorMain,
              )
            : TextStylesKit.buttonXl.copyWith(
                color: ColorKit.colorTextSecondary,
              ),
      ),
    );
  }

  //factory
  factory ButtonGhost.ghostXl({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonGhost(
        onPressed: onPressed,
        title: title,
        buttonStyle: const ButtonStyle(
          padding: ButtonStyleKit.paddingXl,
        ),
      );

  factory ButtonGhost.ghostL({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonGhost(
        onPressed: onPressed,
        title: title,
        buttonStyle: const ButtonStyle(
          padding: ButtonStyleKit.paddingL,
        ),
      );

  factory ButtonGhost.ghostM({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonGhost(
        title: title,
        onPressed: onPressed,
        buttonStyle: const ButtonStyle(
          padding: ButtonStyleKit.paddingM,
        ),
      );
}
