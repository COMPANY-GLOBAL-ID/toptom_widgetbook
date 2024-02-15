import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

class ButtonBlack extends StatelessWidget {
  const ButtonBlack({
    Key? key,
    required this.title,
    required this.onPressed,
    this.textStyle,
    this.edgeInsets,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;

  final TextStyle? textStyle;
  final EdgeInsets? edgeInsets;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(edgeInsets),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return ColorKit.pressBlackButtonColor;
            }
            if (states.contains(MaterialState.focused)) {
              return ColorKit.focusedBlackButtonColor;
            }
            if (states.contains(MaterialState.disabled)) {
              return ColorKit.colorStrokePrimary;
            }
            return ColorKit.colorTextPrimary;
          },
        ),
      ),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }

  //factory
  factory ButtonBlack.acceptXl({
    required String title,
    required VoidCallback? onPressed,
  }) =>
      ButtonBlack(
        title: title,
        onPressed: onPressed,
        textStyle: TextStylesKit.buttonXl,
        edgeInsets: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
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
        edgeInsets: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
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
        edgeInsets: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
      );
}
