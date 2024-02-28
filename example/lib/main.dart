
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'core/directories.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [],
      directories: directories
    );
  }
}