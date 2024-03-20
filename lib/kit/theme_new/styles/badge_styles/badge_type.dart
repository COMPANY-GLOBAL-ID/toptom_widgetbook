import 'package:flutter/material.dart';
import '../../theme_core.dart';

part 'badge_size.dart';
part 'badge_color.dart';

enum BadgeType {
  primary,
  secondary;

  Color toBackground(BuildContext context, BadgeColor color) {
    return switch (this) {
      BadgeType.primary => color.toColor(context),
      BadgeType.secondary => Colors.transparent
    };
  }

  Color toForeground(BuildContext context, BadgeColor color) {
    return switch (this) {
      BadgeType.primary => Colors.white,
      BadgeType.secondary => color.toColor(context),
    };
  }
}
