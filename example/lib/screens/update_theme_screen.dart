import 'package:example/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class UpdateThemeScreen extends StatefulWidget {
  const UpdateThemeScreen({super.key});

  @override
  State<UpdateThemeScreen> createState() => _UpdateThemeScreenState();
}

class _UpdateThemeScreenState extends State<UpdateThemeScreen> {
  void _toggle(BuildContext context) {
    ThemeSwitcher.of(context)?.switchTheme(
      darkTheme(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher(
      startData: defaultTheme(),
      themes: [
        darkTheme(),
        defaultTheme(),
      ],
      child: Scaffold(
        backgroundColor: ThemeCore.of(context).color.scheme.background,
        body: ButtonWidget(
          onPressed: () => _toggle(context),
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
