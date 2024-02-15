import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';

class CoreTheme {
  static final coreTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'NotoSans-Regular',
    scaffoldBackgroundColor: ColorKit.colorWhite,

    //
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: ColorKit.colorWhite,
    ),

    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: ButtonStyleKit.border,
        backgroundColor: ButtonStyleKit.acceptStyle,
      ),
    ),

    //
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
        textStyle: ButtonStyleKit.outlineTextStyle,
        shape: ButtonStyleKit.border,
        side: ButtonStyleKit.outlineSideStyle,
      ),
    ),

    //
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: ButtonStyleKit.border,
        overlayColor: ButtonStyleKit.textButtonOverlayStyle,
      ),
    ),
  );
}
