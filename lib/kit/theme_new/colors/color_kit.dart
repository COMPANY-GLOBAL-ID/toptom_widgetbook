import 'package:flutter/material.dart';

part 'button_color_kit.dart';
part 'badge_color_kit.dart';
part 'snackbar_color_kit.dart';

class ColorKit {
  final ButtonColorKit buttonColor;
  final BadgeColorKit badgeColor;
  final SnackBarColorKit snackBarColor;

  const ColorKit(
      {this.buttonColor = const ButtonColorKit(),
      this.badgeColor = const BadgeColorKit(),
      this.snackBarColor = const SnackBarColorKit()});

  //APP COLORS
  static const colorMain = Color.fromRGBO(250, 77, 30, 1);
  static const colorTextPrimary = Color.fromRGBO(15, 14, 20, 1);
  static const colorTextSecondary = Color.fromRGBO(139, 145, 169, 1);
  static const colorGray = Color.fromRGBO(72, 72, 72, 1);
  static const colorStrokePrimary = Color.fromRGBO(208, 213, 221, 1);
  static const colorBackgroundSecondary = Color.fromRGBO(245, 246, 248, 1);
  static const colorOverlayPrimary = Color.fromRGBO(243, 243, 243, 1);
  static const colorOverlaySecondary = Color.fromRGBO(233, 233, 233, 1);
  static const colorErrorSecondary = Color.fromRGBO(243, 195, 195, 1);
  static const colorPositiveSecondary = Color.fromRGBO(195, 243, 200, 1);
  static const colorWhite = Color.fromRGBO(255, 255, 255, 1);
  static const colorYellowStar = Color.fromRGBO(248, 145, 51, 1);
  static const menuDataColor = Color.fromRGBO(243, 244, 245, 1);
}
