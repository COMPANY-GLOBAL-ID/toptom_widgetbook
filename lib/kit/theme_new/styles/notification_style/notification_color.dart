part of 'notification_type.dart';

enum NotificationColor {
  black,
  success,
  error,
  warning,
  ghost,
  information;

  Color toBackground(BuildContext context) {
    final color = ThemeCore.of(context).color.snackBarColor;
    return switch (this) {
      NotificationColor.information => color.information,
      NotificationColor.black => color.defaultPrimary,
      NotificationColor.success => color.positive,
      NotificationColor.error => color.error,
      NotificationColor.warning => color.warning,
      NotificationColor.ghost => color.inverted,
    };
  }

  Color toForegroundPrimary(BuildContext context) {
    final color = ThemeCore.of(context).color.snackBarColor;
    return switch (this) {
      NotificationColor.black ||
      NotificationColor.success ||
      NotificationColor.error ||
      NotificationColor.warning =>
        ThemeCore.of(context).color.scheme.white,
      NotificationColor.ghost => ThemeCore.of(context).color.scheme.textPrimary,
      NotificationColor.information => color.informationText,
    };
  }

  Color toForegroundSecondary(BuildContext context) {
    final color = ThemeCore.of(context).color.snackBarColor;
    return switch (this) {
      NotificationColor.black => color.defaultPrimary,
      NotificationColor.success => color.positive,
      NotificationColor.error => color.error,
      NotificationColor.warning => color.warning,
      NotificationColor.ghost => color.defaultPrimary,
      NotificationColor.information => color.informationText,
    };
  }

  IconData toIcon(BuildContext context) {
    return switch (this) {
      NotificationColor.black => Icons.info,
      NotificationColor.success => Icons.check_circle,
      NotificationColor.error => Icons.cancel,
      NotificationColor.warning => Icons.warning_amber_outlined,
      NotificationColor.ghost => Icons.info_outline,
      NotificationColor.information => Icons.info_outline,
    };
  }
}
