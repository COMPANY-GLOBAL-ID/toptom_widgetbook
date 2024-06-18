import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:toptom_widgetbook/kit/theme_new/styles/notification_style/notification_type.dart';

import '../helper/screen_widget.dart';

class AppearScreen extends StatelessWidget {
  const AppearScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      children: [
        ...NotificationType.values.map((type) {
          return Column(
            children: [
              ...NotificationColor.values.map((color) {
                return NotificationAppear(
                  cancel: () {},
                  hasIcon: true,
                  title: 'Lorem Ipsum',
                  description: 'Lorem Ipsum alt geosmatijo',
                  color: color,
                  type: type,
                );
              })
            ],
          );
        }),
      ],
    );
  }
}
