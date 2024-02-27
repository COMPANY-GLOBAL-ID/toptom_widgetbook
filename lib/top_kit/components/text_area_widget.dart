import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class TextAreaWidget extends StatelessWidget {
  const TextAreaWidget({
    super.key,
    required this.enabled,
    required this.maxLines,
    required this.controller,
    required this.hintText,
    this.hintStyle,
    required this.filled,
    required this.errorText,
    this.textStyle,
    this.validator,
  });

  final TextEditingController controller;
  final int maxLines;
  final bool enabled;
  final String hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final bool filled;
  final String? errorText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    TextStyle? hintTextStyle = errorText != null ? hintStyle?.copyWith(color: ColorKit.colorErrorPrimary) : hintStyle;
    TextStyle? textColorStyle = errorText != null ? hintStyle?.copyWith(color: ColorKit.colorErrorPrimary) : textStyle;
    return TextFormField(
      controller: controller,
      validator: validator,
      style: textColorStyle,
      enabled: enabled,
      maxLines: maxLines,
      decoration: InputDecoration(
        errorText: errorText,
        hintStyle: hintTextStyle,
        hintText: hintText,
        filled: !enabled,
        fillColor: filled ? ColorKit.colorOverlaySecondary : null,
      ),
    );
  }

  factory TextAreaWidget.maxLinesXl({
    required TextEditingController controller,
    required String hintText,
    required bool enabled,
    required String? errorText,
  }) =>
      TextAreaWidget(
        controller: controller,
        errorText: errorText,
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
    required TextEditingController controller,
    required String hintText,
    required bool enabled,
    required String? errorText,
  }) =>
      TextAreaWidget(
        controller: controller,
        errorText: errorText,
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
    required TextEditingController controller,
    required String hintText,
    required bool enabled,
    required String? errorText,
  }) =>
      TextAreaWidget(
        controller: controller,
        errorText: errorText,
          hintStyle: TextStylesKit.buttonS
              .copyWith(color: ColorKit.colorTextSecondary),
          textStyle:
              TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary),
          hintText: hintText,
          enabled: enabled,
          maxLines: ConstantsKit.maxLinesS,
          filled: !enabled
      );
}
