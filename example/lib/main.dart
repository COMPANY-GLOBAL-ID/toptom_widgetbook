import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:widgetbook/widgetbook.dart';

import 'core/directories.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(addons: [
      ThemeAddon(
        themes: [
          WidgetbookTheme(name: 'CORE THEMA', data: CoreTheme.coreTheme)
        ],
        themeBuilder: (context, theme, child) {
          // Wrap use cases with the custom theme's InheritedWidget
          return Theme(
            data: theme,
            child: child,
          );
        },
      ),
    ], directories: directories);
  }
}
