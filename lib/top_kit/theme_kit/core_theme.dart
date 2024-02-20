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
    colorScheme: const ColorScheme(
      primary: ColorKit.colorMain,
      secondary: ColorKit.colorTextSecondary,
      background: ColorKit.colorWhite,
      surface: ColorKit.colorWhite,
      error: ColorKit.colorErrorPrimary,
      onPrimary: ColorKit.colorWhite,
      onSecondary: ColorKit.colorWhite,
      onBackground: ColorKit.colorTextPrimary,
      onError: ColorKit.colorWhite,
      brightness: Brightness.light,
      onSurface: ColorKit.colorTextPrimary,
    ),

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
    inputDecorationTheme: InputDecorationTheme(
      border: BorderKit.defaultTextInputBorder.copyWith(
        borderSide: const BorderSide(
            color: ColorKit.colorStrokePrimary
        ),
      ),
      enabledBorder: BorderKit.defaultTextInputBorder.copyWith(
        borderSide: const BorderSide(
            color: ColorKit.colorStrokePrimary
        ),
      ),
      focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
        borderSide: const BorderSide(
          color: ColorKit.colorMain
        ),
      ),
      errorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
              color: ColorKit.colorErrorPrimary
          ),
      ),
      errorStyle: const TextStyle(color: ColorKit.colorErrorPrimary),
      disabledBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
              color: ColorKit.colorOverlaySecondary
          ),
      ),
  ),
    checkboxTheme: CheckboxThemeData(
      checkColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
      fillColor: BackgroundStatesColorKit.checkboxFillColor,
      shape: BorderKit.borderDefaultS,
      side: SideStatesKit.sideKit,
    ),
  );
}
