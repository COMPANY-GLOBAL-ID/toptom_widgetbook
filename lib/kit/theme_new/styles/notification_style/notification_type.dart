import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

part 'notification_color.dart';
part 'notification_size.dart';

enum NotificationType {
  primary,
  secondary;

  Color toBackground(BuildContext context, NotificationColor color) {
    return switch (this) {
      NotificationType.primary => color.toBackground(context),
      NotificationType.secondary =>
        color.toBackground(context).withOpacity(0.1),
    };
  }

  Color toForeground(BuildContext context, NotificationColor color) {
    return switch (this) {
      NotificationType.primary => color.toForegroundPrimary(context),
      NotificationType.secondary => color.toForegroundSecondary(context),
    };
  }
}
