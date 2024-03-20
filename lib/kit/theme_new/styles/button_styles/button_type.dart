import 'package:flutter/material.dart';
import '../../theme_core.dart';

part 'button_size.dart';
part 'button_color.dart';
part 'button_icon_size.dart';

enum ButtonType {
  primary,
  outlined,
  ghost,
  defaultButton;

  Color background(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;
    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color backgroundPressed(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentHover,
          ButtonColor.black => colorTheme.buttonColor.blackHover,
        },
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentGhostHover,
          ButtonColor.black => colorTheme.buttonColor.blackGhostHover,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.defaultButtonHover,
          ButtonColor.black => colorTheme.buttonColor.defaultButtonHover,
        },
    };
  }

  Color backgroundDisable(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => colorTheme.buttonColor.disable,
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color foreground(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentText,
          ButtonColor.black => colorTheme.buttonColor.blackText,
        },
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
    };
  }

  Color foregroundPressed(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;
    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentText,
          ButtonColor.black => colorTheme.buttonColor.blackText,
        },
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentHover,
          ButtonColor.black => colorTheme.buttonColor.blackHover,
        },
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
    };
  }

  Color foregroundDisable(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => colorTheme.buttonColor.disableText,
      ButtonType.outlined => colorTheme.buttonColor.disable,
      ButtonType.ghost => colorTheme.buttonColor.disable,
      ButtonType.defaultButton => colorTheme.buttonColor.disable,
    };
  }

  Color borderColor(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color borderColorPressed(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentHover,
          ButtonColor.black => colorTheme.buttonColor.blackHover,
        },
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color disableBorderColor(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => colorTheme.buttonColor.disable,
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }
}
