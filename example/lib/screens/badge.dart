import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text("Badge", style: ThemeCore.of(context).typography.h2),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...BadgeType.values.map((type) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${type.name} Badge".toUpperCase(),
                        style: ThemeCore.of(context).typography.h5),
                    ...BadgeColor.values.map((color) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BadgeWidget(
                              type: type,
                              size: BadgeSize.small,
                              color: color,
                              child: Text('Status text'),
                            ),
                            const SizedBox(width: 10),
                            BadgeWidget(
                              type: type,
                              size: BadgeSize.small,
                              color: color,
                              child: const Row(
                                children: [
                                  Text('Status text'),
                                  Icon(Icons.access_alarm)
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}
