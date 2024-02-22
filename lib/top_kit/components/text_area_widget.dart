import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit_export.dart';


class TextAreaWidget extends StatelessWidget {
  const TextAreaWidget({
    super.key,
    required this.enabled,
    required this.maxLines,
    required this.hintText,
    this.hintStyle,
    required this.filled,
    this.textStyle,
    this.validator,
  });

  final int maxLines;
  final bool enabled;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final bool filled;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: textStyle,
      enabled: enabled,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintStyle: hintStyle,
        hintText: hintText,
        filled: !enabled,
        fillColor: filled ? ColorKit.colorOverlaySecondary : null,
      ),
    );
  }

  factory TextAreaWidget.maxLinesXl({
    required String hintText,
    required bool enabled,
  }) =>
      TextAreaWidget(
        hintStyle:
            TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextSecondary),
        textStyle:
            TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary),
        maxLines: ConstantsKit.maxLinesXl,
        enabled: enabled,
        hintText: hintText,
        filled: !enabled,
      );

  factory TextAreaWidget.maxLinesL({
    required String hintText,
    required bool enabled,
  }) =>
      TextAreaWidget(
        hintStyle:
            TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextSecondary),
        textStyle:
            TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextPrimary),
        maxLines: ConstantsKit.maxLinesL,
        enabled: enabled,
        hintText: hintText,
        filled: !enabled,
      );

  factory TextAreaWidget.maxLinesS({
    required String hintText,
    required bool enabled,
  }) =>
      TextAreaWidget(
          hintStyle: TextStylesKit.buttonS
              .copyWith(color: ColorKit.colorTextSecondary),
          textStyle:
              TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary),
          hintText: hintText,
          enabled: enabled,
          maxLines: ConstantsKit.maxLinesS,
          filled: !enabled);
}
