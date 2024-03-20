part of 'button_type.dart';

enum ButtonSize {
  xl,
  l,
  m,
  s;

  EdgeInsets padding(BuildContext context) {
    switch (this) {
      case ButtonSize.xl:
        return EdgeInsets.symmetric(
          horizontal: ThemeCore.of(context).padding.l,
          vertical: ThemeCore.of(context).padding.l,
        );
      case ButtonSize.l:
        return EdgeInsets.symmetric(
          horizontal: ThemeCore.of(context).padding.l,
          vertical: ThemeCore.of(context).padding.m,
        );
      case ButtonSize.m:
        return EdgeInsets.symmetric(
          horizontal: ThemeCore.of(context).padding.m,
          vertical: ThemeCore.of(context).padding.ms,
        );
      case ButtonSize.s:
        return EdgeInsets.symmetric(
          horizontal: ThemeCore.of(context).padding.ms,
          vertical: ThemeCore.of(context).padding.s,
        );
    }
  }

  TextStyle textStyle(BuildContext context) {
    return (switch (this) {
      ButtonSize.xl ||
      ButtonSize.l =>
        ThemeCore.of(context).typography.paragraphMedium,
      ButtonSize.m => ThemeCore.of(context).typography.paragraphSmall,
      ButtonSize.s => ThemeCore.of(context).typography.label
    })
        .copyWith(
      fontWeight: FontWeight.w500,
    );
  }

  double iconSize() {
    return switch (this) {
      ButtonSize.xl => 24,
      ButtonSize.l => 20,
      ButtonSize.m => 16,
      ButtonSize.s => 12,
    };
  }
}
