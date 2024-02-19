import 'package:flutter/material.dart';

import 'package:toptom_widgetbook/top_kit/constants_kit/material_states_property/backgound_states_color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/border_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/material_states_property/text_style_states_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/material_states_property/side_states_kit.dart';

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
        backgroundColor: BackgroundStatesColorKit.blackStyle,
      ),
    ),

    //
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
        textStyle: TextStyleStatesKit.outlineTextStyle,
        shape: BorderKit.borderDefault,
        side: SideStatesKit.outlineSideStyle,
      ),
    ),

    //
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: BorderKit.borderDefault,
        overlayColor: BackgroundStatesColorKit.textButtonOverlayStyle,
      ),
    ),

    //
    checkboxTheme: CheckboxThemeData(
      checkColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
      shape: BorderKit.borderDefaultS,
      side: SideStatesKit.sideKit,
      fillColor: BackgroundStatesColorKit.checkboxFillColor
    ),
  );
}
