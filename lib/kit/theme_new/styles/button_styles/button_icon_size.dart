part of 'button_type.dart';

enum ButtonIconSize {
  xl,
  l,
  m,
  s;

  EdgeInsets padding(BuildContext context) {
    switch (this) {
      case ButtonIconSize.xl:
        return EdgeInsets.all(ThemeCore.of(context).padding.l);
      case ButtonIconSize.l:
        return EdgeInsets.symmetric(
          horizontal: ThemeCore.of(context).padding.m,
          vertical: ThemeCore.of(context).padding.m,
        );
      case ButtonIconSize.m:
        return EdgeInsets.symmetric(
          horizontal: ThemeCore.of(context).padding.m,
          vertical: ThemeCore.of(context).padding.m,
        );
      case ButtonIconSize.s:
        return EdgeInsets.symmetric(
          horizontal: ThemeCore.of(context).padding.ms,
          vertical: ThemeCore.of(context).padding.ms,
        );
    }
  }

  TextStyle textStyle(BuildContext context) {
    return (switch (this) {
      ButtonIconSize.xl ||
      ButtonIconSize.l =>
        ThemeCore.of(context).typography.paragraphMedium,
      ButtonIconSize.m => ThemeCore.of(context).typography.paragraphSmall,
      ButtonIconSize.s => ThemeCore.of(context).typography.label
    })
        .copyWith(
      fontWeight: FontWeight.w500,
    );
  }

  double iconSize() {
    return switch (this) {
      ButtonIconSize.xl => 24,
      ButtonIconSize.l => 20,
      ButtonIconSize.m => 16,
      ButtonIconSize.s => 12,
    };
  }
}
