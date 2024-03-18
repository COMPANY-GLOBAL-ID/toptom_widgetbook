import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

import 'typography_kit.dart';

class ThemeDataCore {
  final TypographyKit typography;
  final ColorKit color;
  final BorderKit border;
  final RadiusKit radius;

  const ThemeDataCore({
    this.typography = const TypographyKit(
      h1: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, height: 32 / 24),
      h2: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, height: 28 / 20),
      h3: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 24 / 16),
      h4: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, height: 20 / 14),
      h5: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, height: 16 / 12),
      h6: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, height: 14 / 10),
      paragraphBig: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16),
      paragraphMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16),
      paragraphSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16),
      labelBig: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16),
      labelMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16),
      labelSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16),
      labelLite: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, height: 24 / 16),
    ),
    this.color = const ColorKit(),
    this.border = const BorderKit(
      borderDefaultLg: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
      borderDefaultM: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))),
      borderDefaultS: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
      defaultTextInputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(
          color: Color(0xFFE0E0E0),
          width: 1,
        ),
      ),
    ),
    this.radius = const RadiusKit(),
  });

}

class ThemeCore extends InheritedWidget {
  final ThemeDataCore data;

  const ThemeCore({super.key, required super.child, this.data = const ThemeDataCore(),});

  static ThemeDataCore of(BuildContext context) {
    final ThemeDataCore? result = context.dependOnInheritedWidgetOfExactType<ThemeCore>()?.data;
    assert(result != null, 'No ThemeCore found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

