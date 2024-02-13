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
  final AppShadowScheme shadowSchemeTop;
  final AppShadowScheme shadowSchemeBottom;
  final AppBorderRadius borderRadius;

  TopTomThemeData({
    required this.colorScheme,
    required this.shadowSchemeTop,
    required this.shadowSchemeBottom,
    required this.borderRadius,
  });

  factory TopTomThemeData.copyWith({
    required AppColorScheme colorScheme,
    required AppShadowScheme shadowSchemeTop,
    required AppShadowScheme shadowSchemeBottom,
    required AppBorderRadius borderRadius,
  }) {
    return TopTomThemeData(
      colorScheme: colorScheme,
      shadowSchemeTop: shadowSchemeTop,
      shadowSchemeBottom: shadowSchemeBottom,
      borderRadius: borderRadius,
    );
  }
}
