import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class CoreTheme {
  static ThemeData coreTheme(BuildContext context) {
    final themeCore = ThemeCore.of(context);

    return ThemeData(
      useMaterial3: false,
    );
  }
}
