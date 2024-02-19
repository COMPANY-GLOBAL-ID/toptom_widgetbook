import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_backgound_color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_padding_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';

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
          backgroundColor: ButtonBackgroundColorKit.closeIconColor,
          minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeL),
          padding: ButtonPaddingKit.paddingLSquare,
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
          backgroundColor: ButtonBackgroundColorKit.closeIconColor,
          minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeM),
          padding: ButtonPaddingKit.paddingMsSquare,
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
          backgroundColor: ButtonBackgroundColorKit.closeIconColor,
          minimumSize: const MaterialStatePropertyAll(ConstantsKit.sizeS),
          padding: ButtonPaddingKit.paddingSSquare,
        ),
      );

  
}
