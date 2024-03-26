import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

export 'typography_kit.dart';
export 'padding_kit.dart';
export 'styles/styles.dart';
export 'toptom_icons.dart';
export 'colors/color_kit.dart';

class ThemeDataCore {
  final TypographyKit typography;
  final ColorKit color;
  final BorderKit border;
  final RadiusKit radius;
  final PaddingKit padding;

  const ThemeDataCore({
    this.padding = const PaddingKit(),
    this.typography = const TypographyKit(),
    this.color = const ColorKit(),
    this.border = const BorderKit(
      borderDefaultLg: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      borderDefaultM: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      borderDefaultS: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))),
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

  ThemeDataCore copyWith({
    TypographyKit? typography,
    ColorKit? color,
    BorderKit? border,
    RadiusKit? radius,
  }) {
    return ThemeDataCore(
      typography: typography ?? this.typography,
      color: color ?? this.color,
      border: border ?? this.border,
      radius: radius ?? this.radius,
    );
  }
}

class ThemeCore extends InheritedWidget {
  final ThemeDataCore data;

  const ThemeCore({
    super.key,
    required super.child,
    this.data = const ThemeDataCore(),
  });

  static ThemeDataCore of(BuildContext context) {
    final ThemeDataCore? result =
        context.dependOnInheritedWidgetOfExactType<ThemeCore>()?.data;
    assert(result != null, 'No ThemeCore found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
