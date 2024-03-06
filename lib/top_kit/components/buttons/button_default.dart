import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

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
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: PaddingStatesKit.paddingXlSquare,
          backgroundColor: BackgroundStatesColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon,
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
            if (suffixIcon != null) ...[
              const SizedBox(
                width: 16,
              ),
              suffixIcon
            ],
          ],
        ),
      );

  factory ButtonDefault.defaultL({
    required String title,
    required VoidCallback? onPressed,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: PaddingStatesKit.paddingLSquare,
          backgroundColor: BackgroundStatesColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon,
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
            if (suffixIcon != null) ...[
              const SizedBox(
                width: 14,
              ),
              suffixIcon
            ],
          ],
        ),
      );

  factory ButtonDefault.defaultM({
    required String title,
    required VoidCallback? onPressed,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: PaddingStatesKit.paddingMSquare,
          backgroundColor: BackgroundStatesColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon,
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
            if (suffixIcon != null) ...[
              const SizedBox(
                width: 8,
              ),
              suffixIcon,
            ],
          ],
        ),
      );

  factory ButtonDefault.defaultS({
    required String title,
    required VoidCallback? onPressed,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) =>
      ButtonDefault(
        onPressed: onPressed,
        buttonStyle: ButtonStyle(
          padding: PaddingStatesKit.paddingSSquare,
          backgroundColor: BackgroundStatesColorKit.defaultStyle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon,
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
            if (suffixIcon != null) ...[
              const SizedBox(
                width: 4,
              ),
              suffixIcon
            ],
          ],
        ),
      );
}
