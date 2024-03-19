import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class CoreTheme {
  static ThemeData coreTheme(BuildContext context) {
    final themeCore = ThemeCore.of(context);

    return ThemeData(
      useMaterial3: false,
      fontFamily: 'NotoSans-Regular',
      scaffoldBackgroundColor: ColorKit.colorWhite,
      colorScheme: const ColorScheme(
        primary: ColorKit.colorMain,
        secondary: ColorKit.colorTextSecondary,
        background: ColorKit.colorWhite,
        surface: ColorKit.colorWhite,
        error: ColorKit.errorPrimary,
        onPrimary: ColorKit.colorWhite,
        onSecondary: ColorKit.colorWhite,
        onBackground: ColorKit.colorTextPrimary,
        onError: ColorKit.errorTextPrimary,
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
          shape:MaterialStateProperty.all<RoundedRectangleBorder>(themeCore.border.borderDefaultM),
          backgroundColor: BackgroundStatesColorKit.blackStyle,
        ),
      ),

      //
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          overlayColor: const MaterialStatePropertyAll(Colors.transparent),
          backgroundColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
          textStyle: TextStyleStatesKit.outlineTextStyle,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(themeCore.border.borderDefaultM),
          side: SideStatesKit.outlineSideStyle,
        ),
      ),

      //
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(themeCore.border.borderDefaultM),
          overlayColor: BackgroundStatesColorKit.textButtonOverlayStyle,
        ),
      ),

      //z
      inputDecorationTheme: InputDecorationTheme(
        border: themeCore.border.defaultTextInputBorder.copyWith(
              borderSide: const BorderSide(color: ColorKit.colorStrokePrimary),
            ),
        enabledBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.colorStrokePrimary),
        ),
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.colorMain),
        ),
        errorBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorTextPrimary),
        ),
        focusedErrorBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorTextPrimary),
        ),
        errorStyle: const TextStyle(color: ColorKit.errorTextPrimary),
        disabledBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.colorOverlaySecondary),
        ),
      ),

      //
      checkboxTheme: CheckboxThemeData(
        checkColor: const MaterialStatePropertyAll(ColorKit.colorWhite),
        fillColor: BackgroundStatesColorKit.checkboxFillColor,
        shape: themeCore.border.borderDefaultS,
        side: SideStatesKit.sideKit,
      ),

      //
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorKit.colorWhite,
        selectedLabelStyle: TextStylesKit.selectedBottomM,
        unselectedLabelStyle: TextStylesKit.unSelectedBottomM,
        unselectedItemColor: ColorKit.closePressColor,
        selectedItemColor: ColorKit.colorYelowStar,
        showUnselectedLabels: true,
        elevation: 10,
      ),
    );
  }
}
