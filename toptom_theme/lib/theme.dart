import 'package:flutter/cupertino.dart';
import 'package:toptom_theme/toptom_theme.dart';

class TopTomTheme extends InheritedWidget {
  final TopTomThemeData themeData;

  const TopTomTheme({
    super.key,
    required this.themeData,
    required super.child,
  });

  static TopTomThemeData of(BuildContext context) {
    final TopTomTheme? result =
        context.dependOnInheritedWidgetOfExactType<TopTomTheme>();
    assert(result != null, 'No CustomThemeData found in context');
    return result!.themeData;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

class TopTomThemeData {
  final AppColorScheme colorScheme;
  final AppShadowScheme shadowScheme;

  TopTomThemeData({
    required this.colorScheme,
    required this.shadowScheme,
  });

  factory TopTomThemeData.copyWith({
    required AppColorScheme colorScheme,
    required AppShadowScheme shadowScheme,
  }) {
    return TopTomThemeData(
      colorScheme: colorScheme,
      shadowScheme: shadowScheme,
    );
  }
}
