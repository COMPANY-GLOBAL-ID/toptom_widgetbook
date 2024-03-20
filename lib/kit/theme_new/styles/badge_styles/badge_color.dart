part of 'badge_type.dart';

enum BadgeColor {
  info,
  warning,
  error,
  success,
  neutral,
  status1,
  status2,
  status3,
  status4,
  status5,
  status6;

  Color toColor(BuildContext context) {
    final color = ThemeCore.of(context).color.badgeColor;
    return switch (this) {
      BadgeColor.info => color.info,
      BadgeColor.warning => color.warning,
      BadgeColor.error => color.error,
      BadgeColor.success => color.success,
      BadgeColor.neutral => color.neutral,
      BadgeColor.status1 => color.status1,
      BadgeColor.status2 => color.status2,
      BadgeColor.status3 => color.status3,
      BadgeColor.status4 => color.status4,
      BadgeColor.status5 => color.status5,
      BadgeColor.status6 => color.status6
    };
  }
}
