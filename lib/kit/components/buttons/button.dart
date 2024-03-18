import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/constants_kit/colors/color_kit.dart';
import 'package:toptom_widgetbook/kit/export.dart';

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
            if (states.contains(MaterialState.disabled)) {
              return type.backgroundDisable(color , context);
            }
            return type.background(color ,context);
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return type.foregroundDisable(color , context);
            }
            if (states.contains(MaterialState.pressed)) {
              return type.foregroundPressed(color,context);
            }
            return type.foreground(color , context);
          }),
          overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return type.backgroundPressed(color , context);
            }
            if (states.contains(MaterialState.disabled)) {
              return Colors.transparent;
            }
            return Colors.transparent;
          }),
          shape: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            late Color foregroundColor;
            if (states.contains(MaterialState.pressed)) {
              foregroundColor = type.borderColorPressed(color ,context);
            } else if (states.contains(MaterialState.disabled)) {
              foregroundColor = type.disableBorderColor(color , context );
            } else {
              foregroundColor = type.borderColor(color,context);
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
            if (states.contains(MaterialState.disabled)) {
              return type.foregroundDisable(color , context);
            }
            if (states.contains(MaterialState.pressed)) {
              return type.foregroundPressed(color , context);
            }
            return type.foreground(color,context);
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

  Color background(ButtonColor color , BuildContext context) {
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

  Color backgroundPressed(ButtonColor color , BuildContext context) {
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

  Color  backgroundDisable(ButtonColor color , BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => colorTheme.buttonColor.disable,
      ButtonType.outlined => Colors.transparent,
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color foreground(ButtonColor color , BuildContext context) {
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

  Color foregroundPressed(ButtonColor color , BuildContext context) {

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

  Color  foregroundDisable(ButtonColor color , BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => colorTheme.buttonColor.disableText,
      ButtonType.outlined => colorTheme.buttonColor.disable,
      ButtonType.ghost => colorTheme.buttonColor.disable,
      ButtonType.defaultButton => colorTheme.buttonColor.disable,
    };
  }

  Color borderColor(ButtonColor color , BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => switch (color) 
      {
          ButtonColor.primary => colorTheme.buttonColor.accent,
          ButtonColor.black => colorTheme.buttonColor.black,
        },
      ButtonType.ghost => Colors.transparent,
      ButtonType.defaultButton => Colors.transparent,
    };
  }

  Color borderColorPressed(ButtonColor color , BuildContext context) {
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

  Color  disableBorderColor(ButtonColor color ,BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    return switch (this) {
      ButtonType.primary => Colors.transparent,
      ButtonType.outlined => colorTheme.buttonColor.disable,
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

  Color  background(ButtonColor color , BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    switch (this) {
      case ButtonColor.primary:
        return colorTheme.buttonColor.accent;
      case ButtonColor.black:
        return colorTheme.buttonColor.black;
    }
  }

  Color  backgroundPressed(ButtonColor color , BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    switch (this) {
      
      case ButtonColor.primary:
        return colorTheme.buttonColor.accentActive;
      case ButtonColor.black:
        return colorTheme.buttonColor.blackActive;
    }
  }

  Color  foreground(ButtonColor color , BuildContext context) {
    final colorTheme = ThemeCore.of(context).color;

    switch (this) {
      case ButtonColor.primary:
        return colorTheme.buttonColor.accentText;
      case ButtonColor.black:
        return colorTheme.buttonColor.blackText;
    }
  }
}
