import 'package:flutter/material.dart';

import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_backgound_color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/border_kit.dart';
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
        shape: BorderKit.borderDefault,
        backgroundColor: ButtonBackgroundColorKit.blackStyle,
      ),
    ),

    //
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
        textStyle: ButtonTextStyleKit.outlineTextStyle,
        shape: BorderKit.borderDefault,
        side: ButtonBackgroundColorKit.outlineSideStyle,
      ),
    ),

    //
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: BorderKit.borderDefault,
        overlayColor: ButtonBackgroundColorKit.textButtonOverlayStyle,
      ),
    ),

    //
    checkboxTheme: CheckboxThemeData(
      checkColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
      shape: BorderKit.borderDefaultS,
      side: MaterialStateBorderSide.resolveWith(
        (states) {
          if (states.contains(MaterialState.focused)) {
            return const BorderSide(
              color: ColorKit.colorTextSecondary,
              width: 2,
            );
          }
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(width: 0);
          }
          if (states.contains(MaterialState.selected)) {
            return const BorderSide(width: 0);
          }
          return const BorderSide(
            color: ColorKit.colorOverlayAlpha,
            width: 2,
          );
        },
      ),
      fillColor: MaterialStateColor.resolveWith(
        (states) {
          if (states.contains(MaterialState.selected)) {
            return ColorKit.colorMain;
          }
          if (states.contains(MaterialState.disabled)) {
            return ColorKit.colorOverlayAlpha;
          }
          return ColorKit.colorWhite;
        },
      ),
    ),
  );
}
