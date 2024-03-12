import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/constants_kit/colors/color_kit.dart';

import '../../constants_kit/material_states_property/padding_states_kit.dart';

class ButtonWidget extends StatelessWidget {
  final Widget child;
  final ButtonSize size;
  final ButtonType type;
  final ButtonColor color;
  final VoidCallback? onPressed;

  const ButtonWidget({
    Key? key,
    this.size = ButtonSize.m,
    this.type = ButtonType.primary,
    this.color = ButtonColor.primary,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return type.backgroundDisable;
            return type.background(color);
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return type.foregroundDisable;
            if (states.contains(MaterialState.pressed))
              return type.foregroundPressed(color);
            return type.foreground(color);
          }),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed))
              return type.backgroundPressed(color);
            if (states.contains(MaterialState.disabled))
              return Colors.transparent;
            return Colors.transparent;
          }),
          shape: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            late Color foregroundColor;
            if (states.contains(MaterialState.pressed)) {
              foregroundColor = type.borderColorPressed(color);
            } else if (states.contains(MaterialState.disabled)) {
              foregroundColor = type.disableBorderColor;
            } else {
              foregroundColor = type.borderColor(color);
            }

            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: foregroundColor,
                width: 1,
              ),
            );
          }),
          iconColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled))
              return type.foregroundDisable;
            if (states.contains(MaterialState.pressed))
              return type.foregroundPressed(color);
            return type.foreground(color);
          }),
          iconSize: MaterialStatePropertyAll<double>(size.iconSize()),
          shadowColor:
              const MaterialStatePropertyAll<Color>(Colors.transparent),
          textStyle: MaterialStatePropertyAll<TextStyle>(size.textStyle),
          padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(size.padding),
        ),
        child: child);
  }
}

enum ButtonType {
  primary,
  outlined,
  ghost,
  defaultButton;

  Color background(ButtonColor color) {
    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accent,
          ButtonColor.black => ColorKit.buttonColor.black,
        },
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color backgroundPressed(ButtonColor color) {
    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accentHover,
          ButtonColor.black => ColorKit.buttonColor.blackHover,
        },
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accentGhostHover,
          ButtonColor.black => ColorKit.buttonColor.blackGhostHover,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.defaultButtonHover,
          ButtonColor.black => ColorKit.buttonColor.defaultButtonHover,
        },
    };
  }

  Color get backgroundDisable {
    return switch (this) {
      ButtonType.primary => ColorKit.buttonColor.disable,
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color foreground(ButtonColor color) {
    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accentText,
          ButtonColor.black => ColorKit.buttonColor.blackText,
        },
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accent,
          ButtonColor.black => ColorKit.buttonColor.black,
        },
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accent,
          ButtonColor.black => ColorKit.buttonColor.black,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accent,
          ButtonColor.black => ColorKit.buttonColor.black,
        },
    };
  }

  Color foregroundPressed(ButtonColor color) {
    return switch (this) {
      ButtonType.primary => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accentText,
          ButtonColor.black => ColorKit.buttonColor.blackText,
        },
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accentHover,
          ButtonColor.black => ColorKit.buttonColor.blackHover,
        },
      ButtonType.ghost => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accent,
          ButtonColor.black => ColorKit.buttonColor.black,
        },
      ButtonType.defaultButton => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accent,
          ButtonColor.black => ColorKit.buttonColor.black,
        },
    };
  }

  Color get foregroundDisable {
    return switch (this) {
      ButtonType.primary => ColorKit.buttonColor.disableText,
      ButtonType.outlined => ColorKit.buttonColor.disable,
      ButtonType.ghost => ColorKit.buttonColor.disable,
      ButtonType.defaultButton => ColorKit.buttonColor.disable,
    };
  }

  Color borderColor(ButtonColor color) {
    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accent,
          ButtonColor.black => ColorKit.buttonColor.black,
        },
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color borderColorPressed(ButtonColor color) {
    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => switch (color) {
          ButtonColor.primary => ColorKit.buttonColor.accentHover,
          ButtonColor.black => ColorKit.buttonColor.blackHover,
        },
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color get disableBorderColor {
    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => ColorKit.buttonColor.disable,
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }
}

enum ButtonSize {
  xl,
  l,
  m,
  s;

  EdgeInsets get padding {
    switch (this) {
      case ButtonSize.xl:
        return EdgeInsets.all(PaddingKit.xl.value);
      case ButtonSize.l:
        return EdgeInsets.all(PaddingKit.l.value);
      case ButtonSize.m:
        return EdgeInsets.all(PaddingKit.m.value);
      case ButtonSize.s:
        return EdgeInsets.all(PaddingKit.s.value);
    }
  }

  TextStyle get textStyle {
    return switch (this) {
      ButtonSize.xl || ButtonSize.l => const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ButtonSize.m => const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ButtonSize.s => const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
    };
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

enum ButtonColor {
  primary,
  black;

  Color get background {
    switch (this) {
      case ButtonColor.primary:
        return ColorKit.buttonColor.accent;
      case ButtonColor.black:
        return ColorKit.buttonColor.black;
    }
  }

  Color get backgroundPressed {
    switch (this) {
      case ButtonColor.primary:
        return ColorKit.buttonColor.accentActive;
      case ButtonColor.black:
        return ColorKit.buttonColor.blackActive;
    }
  }

  Color get foreground {
    switch (this) {
      case ButtonColor.primary:
        return ColorKit.buttonColor.accentText;
      case ButtonColor.black:
        return ColorKit.buttonColor.blackText;
    }
  }
}
