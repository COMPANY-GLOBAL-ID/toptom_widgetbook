import 'package:flutter/material.dart';

part 'button_color_kit.dart';
part 'badge_color_kit.dart';
part 'snackbar_color_kit.dart';
part 'color_scheme_kit.dart';

class ColorKit {
  final ButtonColorKit buttonColor;
  final BadgeColorKit badgeColor;
  final SnackBarColorKit snackBarColor;
  final ColorSchemeKit scheme;

  const ColorKit({
    this.buttonColor = const ButtonColorKit(),
    this.badgeColor = const BadgeColorKit(),
    this.snackBarColor = const SnackBarColorKit(),
    this.scheme = const ColorSchemeKit(),
  });
}
