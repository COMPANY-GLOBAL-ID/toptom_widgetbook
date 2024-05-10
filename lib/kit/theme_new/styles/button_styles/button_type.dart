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
          ButtonColor.success => colorTheme.buttonColor.success,
          ButtonColor.error => colorTheme.buttonColor.error,
          ButtonColor.warning => colorTheme.buttonColor.warning,
          ButtonColor.white => Colors.transparent,
        },
      ButtonType.outlined => Colors.white.withOpacity(0),
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent.withOpacity(0.1),
          ButtonColor.black => colorTheme.buttonColor.black.withOpacity(0.1),
          ButtonColor.success =>
            colorTheme.buttonColor.success.withOpacity(0.1),
          ButtonColor.error => colorTheme.buttonColor.error.withOpacity(0.1),
          ButtonColor.warning =>
            colorTheme.buttonColor.warning.withOpacity(0.1),
          ButtonColor.white => Colors.white.withOpacity(0.2),
        },
      ButtonType.defaultButton => Colors.white.withOpacity(0),
    };
  }

  Color backgroundPressed(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentHover,
          ButtonColor.black => colorTheme.buttonColor.blackHover,
          ButtonColor.success => colorTheme.buttonColor.successHover,
          ButtonColor.error => colorTheme.buttonColor.errorHover,
          ButtonColor.warning => colorTheme.buttonColor.warningHover,
          ButtonColor.white => Colors.transparent,
        },
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentGhostHover,
          ButtonColor.black => colorTheme.buttonColor.blackGhostHover,
          ButtonColor.success => colorTheme.buttonColor.successGhost,
          ButtonColor.error => colorTheme.buttonColor.errorGhost,
          ButtonColor.warning => colorTheme.buttonColor.warningGhost,
          ButtonColor.white => Colors.white.withOpacity(0.4),
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.defaultButtonHover,
          ButtonColor.black => colorTheme.buttonColor.defaultButtonHover,
          ButtonColor.success => colorTheme.buttonColor.defaultButtonHover,
          ButtonColor.error => colorTheme.buttonColor.defaultButtonHover,
          ButtonColor.warning => colorTheme.buttonColor.defaultButtonHover,
          ButtonColor.white => Colors.transparent,
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
          ButtonColor.success => colorTheme.buttonColor.successText,
          ButtonColor.error => colorTheme.buttonColor.errorText,
          ButtonColor.warning => colorTheme.buttonColor.warningText,
          ButtonColor.white => Colors.white,
        },
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
          ButtonColor.success => colorTheme.buttonColor.success,
          ButtonColor.error => colorTheme.buttonColor.error,
          ButtonColor.warning => colorTheme.buttonColor.warning,
          ButtonColor.white => Colors.white,
        },
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
          ButtonColor.success => colorTheme.buttonColor.success,
          ButtonColor.error => colorTheme.buttonColor.error,
          ButtonColor.warning => colorTheme.buttonColor.warning,
          ButtonColor.white => Colors.white,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
          ButtonColor.success => colorTheme.buttonColor.success,
          ButtonColor.error => colorTheme.buttonColor.error,
          ButtonColor.warning => colorTheme.buttonColor.warning,
          ButtonColor.white => Colors.white,
        },
    };
  }

  Color foregroundPressed(ButtonColor color, BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;
    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentText,
          ButtonColor.black => colorTheme.buttonColor.blackText,
          ButtonColor.success => colorTheme.buttonColor.successText,
          ButtonColor.error => colorTheme.buttonColor.errorText,
          ButtonColor.warning => colorTheme.buttonColor.warningText,
          ButtonColor.white => Colors.white,
        },
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accentHover,
          ButtonColor.black => colorTheme.buttonColor.blackHover,
          ButtonColor.success => colorTheme.buttonColor.successHover,
          ButtonColor.error => colorTheme.buttonColor.errorHover,
          ButtonColor.warning => colorTheme.buttonColor.warningHover,
          ButtonColor.white => Colors.white,
        },
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
          ButtonColor.success => colorTheme.buttonColor.success,
          ButtonColor.error => colorTheme.buttonColor.error,
          ButtonColor.warning => colorTheme.buttonColor.warning,
          ButtonColor.white => Colors.white,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
          ButtonColor.success => colorTheme.buttonColor.success,
          ButtonColor.error => colorTheme.buttonColor.error,
          ButtonColor.warning => colorTheme.buttonColor.warning,
          ButtonColor.white => Colors.white,
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
          ButtonColor.success => colorTheme.buttonColor.success,
          ButtonColor.error => colorTheme.buttonColor.error,
          ButtonColor.warning => colorTheme.buttonColor.warning,
          ButtonColor.white => Colors.white,
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
          ButtonColor.success => colorTheme.buttonColor.successHover,
          ButtonColor.error => colorTheme.buttonColor.errorHover,
          ButtonColor.warning => colorTheme.buttonColor.warningHover,
          ButtonColor.white => Colors.white,
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
