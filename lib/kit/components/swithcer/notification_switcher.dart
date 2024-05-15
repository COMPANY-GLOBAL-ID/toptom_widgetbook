import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class NotificationSwitcher extends StatelessWidget {
  final String notificationDescription;
  final ValueNotifier<bool> valueNotifier;
  final TextStyle textStyle;
  const NotificationSwitcher({
    required this.notificationDescription,
    super.key,
    required this.valueNotifier,
    required this.textStyle,
  });


  @override
  Widget build(BuildContext context) {
    final size = ThemeCore.of(context).padding;
    return ListTile(
      minLeadingWidth: 0.0,
      minVerticalPadding: 0.0,
      contentPadding:
          EdgeInsets.symmetric(horizontal: size.l, vertical: size.ms),
      title: Text(
        notificationDescription,
        style: textStyle,
      ),
      trailing: Transform.scale(
        scale: 0.8,
        child: ValueListenableBuilder<bool>(
          valueListenable: valueNotifier,
          builder: (context, value, child) {
            return Switch(
              value: value,
              onChanged: (newValue) {
                valueNotifier.value = newValue;
              },
            );
          },
        ),
      ),
    );
  }
}