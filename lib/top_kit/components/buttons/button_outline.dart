import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({
    Key? key,
    required this.title,
    required this.onPressed,
    this.textStyle,
    this.buttonStyle,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
  factory ButtonOutline.outlineXl({
    required String title,
    VoidCallback? onPressed,
  }) =>
      ButtonOutline(
        title: title,
        onPressed: onPressed,
        buttonStyle: const ButtonStyle(
          padding: ButtonStyleKit.paddingXl,
        ),
      );

  factory ButtonOutline.outlineL({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonOutline(
        title: title,
        onPressed: onPressed,
        buttonStyle: const ButtonStyle(
          padding: ButtonStyleKit.paddingM,
        ),
      );

  factory ButtonOutline.outlineM({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonOutline(
        title: title,
        onPressed: onPressed,
        buttonStyle: const ButtonStyle(
          padding: ButtonStyleKit.paddingL,
        ),
      );
}
