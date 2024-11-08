import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

import '../helper/screen_widget.dart';

class BorderRadiusScreen extends StatelessWidget {
  const BorderRadiusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      children: [
        const Text(
          "Border radius",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        ...ThemeCore.of(context).radius.values.map((e) {
          return Column(
            children: [
              _BorderRadiusWidget(
                radius: e,
                title: 'Radius: ${e}px',
              ),
              const SizedBox(height: 10),
            ],
          );
        }),
      ],
    );
  }
}

class _BorderRadiusWidget extends StatelessWidget {
  const _BorderRadiusWidget({
    required this.radius,
    required this.title,
  });

  final String title;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
