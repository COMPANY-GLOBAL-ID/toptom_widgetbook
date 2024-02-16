import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_padding_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

class ButtonBlack extends StatelessWidget {
  const ButtonBlack({
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
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }

  //factorys
  factory ButtonBlack.acceptXl({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonBlack(
        title: title,
        onPressed: onPressed,
        textStyle: TextStylesKit.buttonXl,
        buttonStyle: const ButtonStyle(
          padding: ButtonPaddingKit.paddingXl,
        ),
      );

  factory ButtonBlack.acceptL({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonBlack(
        title: title,
        onPressed: onPressed,
        textStyle: TextStylesKit.buttonXl,
        buttonStyle: const ButtonStyle(
          padding: ButtonPaddingKit.paddingL,
        ),
      );

  factory ButtonBlack.asseptM({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonBlack(
        title: title,
        onPressed: onPressed,
        textStyle: TextStylesKit.buttonM,
        buttonStyle: const ButtonStyle(
          padding: ButtonPaddingKit.paddingM,
        ),
      );
}
