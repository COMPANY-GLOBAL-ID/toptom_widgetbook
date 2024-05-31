part of 'badge_type.dart';

enum BadgeSize {
  primary,
  small;

  EdgeInsets toPadding(BuildContext context) {
    return switch (this) {
      BadgeSize.primary => EdgeInsets.symmetric(
          vertical: ThemeCore.of(context).padding.ms,
          horizontal: ThemeCore.of(context).padding.m,
        ),
      BadgeSize.small => EdgeInsets.symmetric(
          vertical: ThemeCore.of(context).padding.s,
          horizontal: ThemeCore.of(context).padding.ms,
        )
    };
  }

  double toSizeIcon() {
    return switch (this) {
      BadgeSize.primary => 18,
      BadgeSize.small => 18,
    };
  }
}
