import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/buttons/button.dart';
import 'package:toptom_widgetbook/kit/theme_new/theme_core.dart';

import '../core/themes.dart';

class UpdateThemeScreen extends StatefulWidget {
  const UpdateThemeScreen({super.key});

  @override
  State<UpdateThemeScreen> createState() => _UpdateThemeScreenState();
}

class _UpdateThemeScreenState extends State<UpdateThemeScreen> {
  void _toggle() {
    ThemeDataCore currentTheme = ThemeCore.of(context);
    if (currentTheme == defaultTheme()) {
      return ThemeSwitcher.of(context)?.switchTheme(darkTheme());
    }
    return ThemeSwitcher.of(context)?.switchTheme(defaultTheme());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeCore.of(context).color.scheme.backgroundSecondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ButtonWidget(
              onPressed: _toggle,
              child: const Text('Toggle'),
            )
          ],
        ),
      ),
    );
  }
}
