import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

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
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(ConstantsKit.rdLg),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return ColorKit.pressButtonColor;
            }
            if (states.contains(MaterialState.focused)) {
              return ColorKit.focusedButtonColor;
            }
            if (states.contains(MaterialState.disabled)) {
              return ColorKit.colorStrokePrimary;
            }
            return ColorKit.colorMain;
          },
        ),
      ),
    ),

    //
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return TextStylesKit.buttonXl.copyWith(
                color: ColorKit.pressButtonColor,
              );
            }
            if (states.contains(MaterialState.focused)) {
              return TextStylesKit.buttonXl.copyWith(
                color: ColorKit.focusedButtonColor,
              );
            }
            if (states.contains(MaterialState.disabled)) {
              return TextStylesKit.buttonXl.copyWith(
                color: ColorKit.colorStrokePrimary,
              );
            }
            return TextStylesKit.buttonXl.copyWith(
              color: ColorKit.colorMain,
            );
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstantsKit.rdLg),
          ),
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const BorderSide(
                color: ColorKit.pressButtonColor,
                width: 1,
              );
            }
            if (states.contains(MaterialState.focused)) {
              return const BorderSide(
                color: ColorKit.focusedButtonColor,
                width: 1,
              );
            }
            if (states.contains(MaterialState.disabled)) {
              return const BorderSide(
                color: ColorKit.colorStrokePrimary,
                width: 1,
              );
            }
            return const BorderSide(
              color: ColorKit.colorMain,
              width: 1,
            );
          },
        ),
      ),
    ),

    //
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return ColorKit.pressButtonGhost;
            }
            if (states.contains(MaterialState.focused)) {
              return ColorKit.focusedButtonGhost;
            }
            return ColorKit.colorWhite;
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ConstantsKit.rdLg),
          ),
        ),
      ),
    ),
  );
}
