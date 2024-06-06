import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

defaultTheme() => const ThemeDataCore(
      color: ColorKit(
          scheme: ColorSchemeKit(
            main: Color.fromRGBO(84, 83, 249, 1),
            backgroundSecondary: Color.fromRGBO(231, 231, 234, 1.0),
          ),
          buttonColor: ButtonColorKit(
            accent: Color.fromRGBO(83, 83, 249, 1),
            accentHover: Color.fromRGBO(62, 62, 215, 1.0),
            accentText: Color.fromRGBO(243, 243, 243, 1),
            black: Color.fromRGBO(0, 0, 0, 1.0),
            blackHover: Color.fromRGBO(218, 218, 218, 1.0),
            blackText: Color.fromRGBO(83, 83, 249, 1),
            accentGhostHover: Color.fromRGBO(103, 103, 234, 1.0),
          ),
          badgeColor: BadgeColorKit(
            info: Color.fromRGBO(243, 243, 243, 1),
            status6: Color.fromRGBO(84, 83, 249, 1),
            status4: Color.fromRGBO(225, 68, 83, 0.1),
            status5: Color.fromRGBO(105, 117, 142, 0.1),
          ),
          snackBarColor: SnackBarColorKit(
            inverted: Color.fromRGBO(84, 83, 249, 0.12),
          )),
    );
darkTheme() {
  const typography = TypographyKit();
  return ThemeDataCore(
      color: const ColorKit(
        scheme: ColorSchemeKit(
          main: Color.fromRGBO(84, 83, 249, 1),
          backgroundSecondary: Color.fromRGBO(48, 48, 48, 1),
          white: Color.fromRGBO(40, 40, 40, 1),
          textPrimary: Color.fromRGBO(230, 230, 230, 1),
          overlayPrimary: Color.fromRGBO(0, 0, 0, 0.20),
          overlaySecondary: Color.fromRGBO(55, 55, 55, 1),
          textSecondary: Color.fromRGBO(180, 180, 180, 1),
          overlayAlpha: Color.fromRGBO(100, 100, 100, 1),
          strokePrimary: Color.fromRGBO(58, 62, 72, 1),
          backgroundAlpha: Color.fromRGBO(45, 45, 45, 1),
        ),
        buttonColor: ButtonColorKit(
          accent: Color.fromRGBO(83, 83, 249, 1),
          accentHover: Color.fromRGBO(62, 62, 215, 1.0),
          accentText: Color.fromRGBO(243, 243, 243, 1),
          black: Color.fromRGBO(255, 255, 255, 1.0),
          blackHover: Color.fromRGBO(218, 218, 218, 1.0),
          blackText: Color.fromRGBO(83, 83, 249, 1),
          accentGhostHover: Color.fromRGBO(103, 103, 234, 1.0),
        ),
        badgeColor: BadgeColorKit(
          info: Color.fromRGBO(0, 0, 0, 0.20),
          status6: Color.fromRGBO(84, 83, 249, 1),
          status4: Color.fromRGBO(225, 68, 83, 0.1),
          status5: Color.fromRGBO(105, 117, 142, 0.1),
        ),
        snackBarColor: SnackBarColorKit(
          inverted: Color.fromRGBO(84, 83, 249, 0.12),
        ),
      ),
      typography: TypographyKit(
        h1: typography.h1.copyWith(color: Colors.white),
        h2: typography.h2.copyWith(color: Colors.white),
        h3: typography.h2.copyWith(color: Colors.white),
        h4: typography.h4.copyWith(color: Colors.white),
        h5: typography.h5.copyWith(color: Colors.white),
        h6: typography.h6.copyWith(color: Colors.white),
        paragraphBig: typography.paragraphBig.copyWith(color: Colors.white),
        paragraphMedium: typography.paragraphBig.copyWith(color: Colors.white),
        paragraphSmall: typography.paragraphSmall.copyWith(color: Colors.white),
        label: typography.label.copyWith(color: Colors.white),
      ));
}
