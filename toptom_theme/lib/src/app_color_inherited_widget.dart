
import 'package:flutter/material.dart';

import 'color_scheme.dart';

class AppColor extends InheritedWidget {
  final AppColorScheme colorScheme;

  const AppColor({
    super.key,
    required this.colorScheme,
    required super.child
  });

  static AppColor of(BuildContext context) {
    final AppColor? result = context.dependOnInheritedWidgetOfExactType<AppColor>();
    assert(result != null, 'No InheritedActiveCity found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}