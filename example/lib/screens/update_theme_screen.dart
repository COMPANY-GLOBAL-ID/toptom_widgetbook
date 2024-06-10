import 'package:example/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class UpdateThemeScreen extends StatefulWidget {
  const UpdateThemeScreen({super.key});

  @override
  State<UpdateThemeScreen> createState() => _UpdateThemeScreenState();
}

class _UpdateThemeScreenState extends State<UpdateThemeScreen> {
  VoidCallback _toggle(ThemeDataCore theme, BuildContext context) =>(){
    ThemeSwitcher.of(context)?.switchTheme(theme);
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeCore.of(context).color.scheme.backgroundSecondary,
      body: SingleChildScrollView(
        child: Column(
          children: ThemeSwitcher.data(context)?.themes.map((theme) {
            return ButtonWidget(
              onPressed: _toggle(theme, context),
              child: Text('Theme ${theme.theme}'),
            );
          }).toList() ?? [],

        ),
      )
    );
  }
}
