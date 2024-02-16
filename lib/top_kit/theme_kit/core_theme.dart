import 'package:flutter/material.dart';

import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_backgound_color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_border_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_text_style_kit.dart';
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
        shape: ButtonBorderKit.borderDefault,
        backgroundColor: ButtonBackgroundColorKit.blackStyle,
      ),
    ),

    //
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
        textStyle: ButtonTextStyleKit.outlineTextStyle,
        shape: ButtonBorderKit.borderDefault,
        side: ButtonBackgroundColorKit.outlineSideStyle,
      ),
    ),

    //
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: ButtonBorderKit.borderDefault,
        overlayColor: ButtonBackgroundColorKit.textButtonOverlayStyle,
      ),
    ),
  );
}
