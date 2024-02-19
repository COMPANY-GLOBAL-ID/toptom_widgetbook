import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/presentation_screen.dart';

import 'package:toptom_widgetbook/top_kit/theme_kit/core_theme.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CoreTheme.coreTheme,
      home: PresentationScreen(),
    );
  }
}
