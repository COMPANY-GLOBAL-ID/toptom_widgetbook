import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

import '../helper/screen_widget.dart';

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      children: [
        const Text(
          "Typography",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ...ThemeCore.of(context).typography.values.map((style) {
          return Column(
            children: [
              Text(
                "Lorem ipsum",
                style: style,
              )
            ],
          );
        })
      ],
    );
  }
}
