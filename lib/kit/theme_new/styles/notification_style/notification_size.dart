part of 'notification_type.dart';

enum NotificationSize {
  primary,
  large;

  EdgeInsets toPadding(BuildContext context) {
    return switch (this) {
      NotificationSize.primary => EdgeInsets.symmetric(
          vertical: ThemeCore.of(context).padding.m,
          horizontal: ThemeCore.of(context).padding.m,
        ),
      NotificationSize.large => EdgeInsets.symmetric(
          vertical: ThemeCore.of(context).padding.xl,
          horizontal: ThemeCore.of(context).padding.xl,
        ),
    };
  }

  EdgeInsets toIconLeftPadding(BuildContext context) {
    return switch (this) {
      NotificationSize.primary => EdgeInsets.only(
          left: ThemeCore.of(context).padding.m,
        ),
      NotificationSize.large =>
        EdgeInsets.only(left: ThemeCore.of(context).padding.xl),
    };
  }

  EdgeInsets toIconRightPadding(BuildContext context) {
    return switch (this) {
      NotificationSize.primary => EdgeInsets.only(
          right: ThemeCore.of(context).padding.m,
        ),
      NotificationSize.large => EdgeInsets.only(
          right: ThemeCore.of(context).padding.xl,
        ),
    };
  }
}
