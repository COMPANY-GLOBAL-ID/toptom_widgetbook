import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text("Badge", style: ThemeCore.of(context).typography.h2),
          const SizedBox(
            height: 20,
          ),
          Text("Primary Badge", style: ThemeCore.of(context).typography.h5),
          const SizedBox(
            height: 10,
          ),
          ...BadgeColor.values.map((color) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BadgeWidget(
                    size: BadgeSize.primary,
                    color: color,
                    child: Text('Status text'),
                  ),
                  const SizedBox(width: 10),
                  BadgeWidget(
                    size: BadgeSize.small,
                    color: color,
                    child: Text('Status text'),
                  ),
                ],
              ),
            );
          }),
          const SizedBox(
            height: 20,
          ),
          Text("Secondary Badge", style: ThemeCore.of(context).typography.h5),
          const SizedBox(height: 20),
          ...BadgeColor.values.map((color) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BadgeWidget(
                    type: BadgeType.secondary,
                    size: BadgeSize.primary,
                    color: color,
                    child: Text('Status text'),
                  ),
                  const SizedBox(width: 10),
                  BadgeWidget(
                    type: BadgeType.secondary,
                    size: BadgeSize.small,
                    color: color,
                    child: Text('Status text'),
                  ),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
