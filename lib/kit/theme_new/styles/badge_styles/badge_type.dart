import 'package:flutter/material.dart';
import '../../theme_core.dart';

part 'badge_size.dart';
part 'badge_color.dart';

enum BadgeType {
  primary,
  outlined,
  secondary;

  Color toBackground(BuildContext context, BadgeColor color) {
    return switch (this) {
      BadgeType.primary => color.toColor(context),
      BadgeType.secondary => Colors.transparent,
      BadgeType.outlined => color.toColor(context).withOpacity(0.1),
    };
  }

  Color toForeground(BuildContext context, BadgeColor color) {
    return switch (this) {
      BadgeType.primary => ThemeCore.of(context).color.scheme.white,
      BadgeType.secondary => color.toColor(context),
      BadgeType.outlined => color.toColor(context),
    };
  }
}
