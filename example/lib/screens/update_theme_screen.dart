import 'package:example/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/buttons/button.dart';
import 'package:toptom_widgetbook/kit/theme_new/theme_core.dart';

class UpdateThemeScreen extends StatefulWidget {
  const UpdateThemeScreen({super.key});

  @override
  State<UpdateThemeScreen> createState() => _UpdateThemeScreenState();
}

class _UpdateThemeScreenState extends State<UpdateThemeScreen> {
  late ThemeController _themeController;
  void _toggle() {
      String newThemeKey = _themeController.currentTheme.value == _themeController.defaultTheme ? 'dark' : 'default';
    _themeController.switchTheme(newThemeKey);
  }
  @override
  void initState() {
    _themeController = ThemeController(
      defaultTheme: defaultTheme(),
      darkTheme: darkTheme(),
    );
      _themeController.loadTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeControllerProvider(
      controller: _themeController,
      child: Scaffold(
        body: ValueListenableBuilder<ThemeDataCore>(
        valueListenable: _themeController.currentTheme,
        builder: (context, themeData, child) {
          return Container(
            color: themeData.color.scheme.backgroundSecondary,
            child: Center(
              child: ButtonWidget(
                onPressed: _toggle,
                child: Text('Toggle '),
              ),
            ),
          );
        },)
      ),
    );
  }
}
