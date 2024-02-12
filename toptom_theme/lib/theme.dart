
import 'package:flutter/cupertino.dart';
import 'package:toptom_theme/toptom_theme.dart';

class CustomTheme extends InheritedWidget {
  final CustomThemeData themeData;


  const CustomTheme({
    super.key,
    required this.themeData,
    required super.child
  });

  static CustomThemeData of(BuildContext context) {
    final CustomTheme? result = context.dependOnInheritedWidgetOfExactType<CustomTheme>();
    assert(result != null, 'No CustomThemeData found in context');
    return result!.themeData;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

class CustomThemeData {
  final AppColorScheme colorScheme;

  CustomThemeData({
    required this.colorScheme
  });

  factory CustomThemeData.copyWith({
    required AppColorScheme colorScheme
  }) {
    return CustomThemeData(
        colorScheme: colorScheme
    );
  }
}