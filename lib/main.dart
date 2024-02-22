import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/presentation/export.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


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
      home: const PresentationScreen(),
    );
  }
}
