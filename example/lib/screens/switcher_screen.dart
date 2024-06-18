import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:widgetbook/widgetbook.dart';

import '../helper/screen_widget.dart';

class SwitcherScreen extends StatelessWidget {
  const SwitcherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String description = context.knobs
        .string(label: 'Notification Switcher', initialValue: 'switch me!');
    final ValueNotifier<bool> valueNotifier = ValueNotifier(false);
    return ScreenWidget(
      children: [
        Text(description),
        NotificationSwitcher(
            notificationDescription: 'Initial text',
            valueNotifier: valueNotifier,
            textStyle: TextStyle(
                color: ThemeCore.of(context).color.scheme.textPrimary)),
      ],
    );
  }
}
