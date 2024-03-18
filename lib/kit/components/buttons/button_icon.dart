import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.sizeButton,
    this.heightIcon,
    this.widthIcon,
    this.buttonStyle,
    this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;
  final ButtonStyle? buttonStyle;
  final Size? sizeButton;
  final double? heightIcon;
  final double? widthIcon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: Icon(
          icon,
          size: heightIcon,
          color: iconColor ?? ColorKit.colorGray,
        ));
  }

  //factory
  //closeIcon
  factory ButtonIcon.l({
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      ButtonIcon(
        icon: icon,
        onPressed: onPressed,
        heightIcon: ConstantsKit.iconL,
        widthIcon: ConstantsKit.iconL,
        buttonStyle: ButtonStyle(
          backgroundColor: BackgroundStatesColorKit.closeIconColor,
          minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeL),
          padding: PaddingStatesKit.paddingLSquare,
        ),
      );

  factory ButtonIcon.m({
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      ButtonIcon(
        icon: icon,
        onPressed: onPressed,
        heightIcon: ConstantsKit.iconL,
        widthIcon: ConstantsKit.iconL,
        buttonStyle: ButtonStyle(
          backgroundColor: BackgroundStatesColorKit.closeIconColor,
          minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeMs),
          padding: PaddingStatesKit.paddingMsSquare,
        ),
      );

  factory ButtonIcon.s({
    required IconData icon,
    required VoidCallback onPressed,
  }) =>
      ButtonIcon(
        icon: icon,
        onPressed: onPressed,
        heightIcon: ConstantsKit.iconS,
        widthIcon: ConstantsKit.iconS,
        buttonStyle: ButtonStyle(
          backgroundColor: BackgroundStatesColorKit.closeIconColor,
          minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
          padding: PaddingStatesKit.paddingSSquare,
        ),
      );

  //white
  factory ButtonIcon.whiteXl({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        backgroundColor: BackgroundStatesColorKit.iconButtonWhite,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeXl),
        padding: PaddingStatesKit.paddingXlSquare,
      ),
    );
  }

  factory ButtonIcon.whiteL({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        backgroundColor: BackgroundStatesColorKit.iconButtonWhite,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeL),
        padding: PaddingStatesKit.paddingLSquare,
      ),
    );
  }

  factory ButtonIcon.whiteM({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        backgroundColor: BackgroundStatesColorKit.iconButtonWhite,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeMs),
        padding: PaddingStatesKit.paddingMsSquare,
      ),
    );
  }

  factory ButtonIcon.whiteS({
    required IconData icon,
    required VoidCallback onPressed,
    required BuildContext context
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      heightIcon: ConstantsKit.iconS,
      widthIcon: ConstantsKit.iconS,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(ThemeCore.of(context).border.borderDefaultM),
        backgroundColor: BackgroundStatesColorKit.iconButtonWhite,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
        padding: PaddingStatesKit.paddingSSquare,
      ),
    );
  }

  //default button icon
  factory ButtonIcon.defaultXl({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorWhite,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        backgroundColor: BackgroundStatesColorKit.iconButtonDefault,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeXl),
        padding: PaddingStatesKit.paddingXlSquare,
      ),
    );
  }

  factory ButtonIcon.defaultL({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorWhite,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        backgroundColor: BackgroundStatesColorKit.iconButtonDefault,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeL),
        padding: PaddingStatesKit.paddingLSquare,
      ),
    );
  }

  factory ButtonIcon.defaultM({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorWhite,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        backgroundColor: BackgroundStatesColorKit.iconButtonDefault,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeMs),
        padding: PaddingStatesKit.paddingMSquare,
      ),
    );
  }

  factory ButtonIcon.defaultS({
    required IconData icon,
    required VoidCallback onPressed,
        required BuildContext context
    
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorWhite,
      heightIcon: ConstantsKit.iconS,
      widthIcon: ConstantsKit.iconS,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(ThemeCore.of(context).border.borderDefaultM),
        backgroundColor: BackgroundStatesColorKit.iconButtonDefault,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
        padding: PaddingStatesKit.paddingSSquare,
      ),
    );
  }

  // icon button outline
  factory ButtonIcon.outlineXl({
    required IconData icon,
    required VoidCallback onPressed,
        required BuildContext context

  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(ThemeCore.of(context).border.borderDefaultLg),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeXl),
        padding: PaddingStatesKit.paddingXlSquare,
      ),
    );
  }

  factory ButtonIcon.outlineL({
    required IconData icon,
    required VoidCallback onPressed,
        required BuildContext context

  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(ThemeCore.of(context).border.borderDefaultLg),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeL),
        padding: PaddingStatesKit.paddingLSquare,
      ),
    );
  }

  factory ButtonIcon.outlineM({
    required IconData icon,
    required VoidCallback onPressed,
    required BuildContext context
  }) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(ThemeCore.of(context).border.borderDefaultLg),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeMs),
        padding: PaddingStatesKit.paddingMSquare,
      ),
    );
  }

  factory ButtonIcon.outlineS(
      {required IconData icon,
      required VoidCallback onPressed,
      required BuildContext context}) {
    return ButtonIcon(
      icon: icon,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconS,
      widthIcon: ConstantsKit.iconS,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(
            ThemeCore.of(context).border.borderDefaultM),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
        padding: PaddingStatesKit.paddingSSquare,
      ),
    );
  }
}
