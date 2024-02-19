import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/border_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/material_states_property/backgound_states_color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/material_states_property/padding_states_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/material_states_property/side_states_kit.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({
    Key? key,
    required this.assetName,
    required this.onPressed,
    this.sizeButton,
    this.heightIcon,
    this.widthIcon,
    this.buttonStyle,
    this.iconColor,
  }) : super(key: key);

  final String assetName;
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
      child: SvgPicture.asset(
        assetName,
        height: heightIcon,
        width: widthIcon,
        colorFilter: ColorFilter.mode(
          iconColor ?? ColorKit.colorGray,
          BlendMode.srcIn,
        ),
      ),
    );
  }

  //factory
  //closeIcon
  factory ButtonIcon.l({
    required String assetName,
    required VoidCallback onPressed,
  }) =>
      ButtonIcon(
        assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) =>
      ButtonIcon(
        assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) =>
      ButtonIcon(
        assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
      onPressed: onPressed,
      heightIcon: ConstantsKit.iconS,
      widthIcon: ConstantsKit.iconS,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(BorderKit.borderDefaultM),
        backgroundColor: BackgroundStatesColorKit.iconButtonWhite,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
        padding: PaddingStatesKit.paddingSSquare,
      ),
    );
  }

  //default button icon
  factory ButtonIcon.defaultXl({
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
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
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
      onPressed: onPressed,
      iconColor: ColorKit.colorWhite,
      heightIcon: ConstantsKit.iconS,
      widthIcon: ConstantsKit.iconS,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(BorderKit.borderDefaultM),
        backgroundColor: BackgroundStatesColorKit.iconButtonDefault,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
        padding: PaddingStatesKit.paddingSSquare,
      ),
    );
  }

  // icon button outline
  factory ButtonIcon.outlineXl({
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(BorderKit.borderDefaultLg),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeXl),
        padding: PaddingStatesKit.paddingXlSquare,
      ),
    );
  }

  factory ButtonIcon.outlineL({
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(BorderKit.borderDefaultLg),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeL),
        padding: PaddingStatesKit.paddingLSquare,
      ),
    );
  }

  factory ButtonIcon.outlineM({
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconL,
      widthIcon: ConstantsKit.iconL,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(BorderKit.borderDefaultLg),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeMs),
        padding: PaddingStatesKit.paddingMSquare,
      ),
    );
  }

  factory ButtonIcon.outlineS({
    required String assetName,
    required VoidCallback onPressed,
  }) {
    return ButtonIcon(
      assetName: assetName,
      onPressed: onPressed,
      iconColor: ColorKit.colorMain,
      heightIcon: ConstantsKit.iconS,
      widthIcon: ConstantsKit.iconS,
      buttonStyle: ButtonStyle(
        shape: MaterialStatePropertyAll(BorderKit.borderDefaultM),
        backgroundColor: BackgroundStatesColorKit.iconOutlineColor,
        side: SideStatesKit.outlineIconSideStyle,
        minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
        padding: PaddingStatesKit.paddingSSquare,
      ),
    );
  }
}
