import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_backgound_color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/button_style_kit/button_padding_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

//TODO() refactor this part to change the button style
class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key? key,
    required this.child,
    required this.onPressed,
    this.buttonStyle,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: child,
    );
  }

  //factory
  factory ButtonDefault.defaultXl({
    required String title,
    required VoidCallback? onPressed,
    String? prefixIcon,
    String? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: ButtonPaddingKit.paddingXlSquare,
          backgroundColor: ButtonBackgroundColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null && prefixIcon.isNotEmpty) ...[
              SvgPicture.asset(
                prefixIcon,
                height: 17.9,
                width: 17.6,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
            Text(
              title,
              style: TextStylesKit.buttonXl.copyWith(
                color: ColorKit.colorTextSecondary,
              ),
              textAlign: TextAlign.start,
            ),
            if (suffixIcon != null && suffixIcon.isNotEmpty) ...[
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(
                suffixIcon,
                height: 17.9,
                width: 17.6,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ],
        ),
      );

  factory ButtonDefault.defaultL({
    required String title,
    required VoidCallback? onPressed,
    String? prefixIcon,
    String? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: ButtonPaddingKit.paddingLSquare,
          backgroundColor: ButtonBackgroundColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null && prefixIcon.isNotEmpty) ...[
              SvgPicture.asset(
                prefixIcon,
                height: 14.73,
                width: 14.99,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
            ],
            Text(
              title,
              style: TextStylesKit.buttonXl.copyWith(
                color: ColorKit.colorTextSecondary,
              ),
              textAlign: TextAlign.start,
            ),
            if (suffixIcon != null && suffixIcon.isNotEmpty) ...[
              const SizedBox(
                width: 14,
              ),
              SvgPicture.asset(
                suffixIcon,
                height: 14.73,
                width: 14.99,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ],
        ),
      );

  factory ButtonDefault.defaultM({
    required String title,
    required VoidCallback? onPressed,
    String? prefixIcon,
    String? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: ButtonPaddingKit.paddingMSquare,
          backgroundColor: ButtonBackgroundColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null && prefixIcon.isNotEmpty) ...[
              SvgPicture.asset(
                prefixIcon,
                height: 14.7,
                width: 14.9,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
            Text(
              title,
              style: TextStylesKit.buttonXl.copyWith(
                color: ColorKit.colorTextSecondary,
              ),
              textAlign: TextAlign.start,
            ),
            if (suffixIcon != null && suffixIcon.isNotEmpty) ...[
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                suffixIcon,
                height: 14.7,
                width: 14.9,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ],
        ),
      );

  factory ButtonDefault.defaultS({
    required String title,
    required VoidCallback? onPressed,
    String? prefixIcon,
    String? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: ButtonPaddingKit.paddingSSquare,
          backgroundColor: ButtonBackgroundColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null && prefixIcon.isNotEmpty) ...[
              SvgPicture.asset(
                prefixIcon,
                height: 12,
                width: 12,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
            ],
            Text(
              title,
              style: TextStylesKit.buttonS.copyWith(
                color: ColorKit.colorTextSecondary,
              ),
              textAlign: TextAlign.start,
            ),
            if (suffixIcon != null && suffixIcon.isNotEmpty) ...[
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset(
                suffixIcon,
                height: 12,
                width: 12,
                colorFilter: const ColorFilter.mode(
                  ColorKit.colorTextSecondary,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ],
        ),
      );
}
