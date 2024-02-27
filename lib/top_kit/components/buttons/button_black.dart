import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


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
          padding: PaddingStatesKit.paddingXl,
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
          padding: PaddingStatesKit.paddingL,
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
          padding: PaddingStatesKit.paddingM,
        ),
      );
}
