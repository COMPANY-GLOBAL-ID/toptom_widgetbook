part of 'button_type.dart';

enum ButtonColor {
  primary,
  black;

  Color background(ButtonColor color, BuildContext context) {
    final buttonColor = ThemeCore.of(context).color.buttonColor;

    switch (this) {
      case ButtonColor.primary:
        return buttonColor.accent;
      case ButtonColor.black:
        return buttonColor.black;
    }
  }

  Color backgroundPressed(ButtonColor color, BuildContext context) {
    final buttonColor = ThemeCore.of(context).color.buttonColor;

    switch (this) {
      case ButtonColor.primary:
        return buttonColor.accentActive;
      case ButtonColor.black:
        return buttonColor.blackActive;
    }
  }

  Color foreground(ButtonColor color, BuildContext context) {
    final buttonColor = ThemeCore.of(context).color.buttonColor;

    switch (this) {
      case ButtonColor.primary:
        return buttonColor.accentText;
      case ButtonColor.black:
        return buttonColor.blackText;
    }
  }
}
