import 'package:flutter/material.dart';

import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

class ButtonAccept extends StatelessWidget {
  const ButtonAccept({
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

  //factory
  factory ButtonAccept.acceptXl({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonAccept(
        title: title,
        onPressed: onPressed,
        textStyle: TextStylesKit.buttonXl,
        buttonStyle: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
          ),
        ),
      );

  factory ButtonAccept.acceptL({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonAccept(
        title: title,
        onPressed: onPressed,
        textStyle: TextStylesKit.buttonXl,
        buttonStyle: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
          ),
        ),
      );

  factory ButtonAccept.asseptM({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonAccept(
        title: title,
        onPressed: onPressed,
        textStyle: TextStylesKit.buttonM,
        buttonStyle: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 12,
            ),
          ),
        ),
      );
}
