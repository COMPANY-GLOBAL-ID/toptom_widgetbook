import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:toptom_widgetbook/kit/export.dart';


class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final TextStyle? labelStyle;
  final String? errorText;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onSubmit;
  final int? maxLength;
  final bool? enabled;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isDense;
  final bool? filled;
  final Color? fillColor;
  final Widget? suffix;
  final bool? isCollapsed;
  final FocusNode? focusNode;

  const TextFieldWidget({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit,
    this.hintText,
    this.maxLength,
    this.enabled,
    this.errorText,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines = 1,
    this.inputFormatters,
    this.isDense = false,
    this.hintStyle,
    this.textStyle,
    this.labelStyle,
    this.filled,
    this.fillColor,
    this.suffix,
    this.isCollapsed,
    this.focusNode,
  });

  static final MaskTextInputFormatter _phoneMask = MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '7',
    type: MaskAutoCompletionType.lazy,
  );

  static final MaskTextInputFormatter _dateMask = MaskTextInputFormatter(
    mask: '##.##.####',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '7',
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          TopField(label: label!, isRequired: isRequired, style: labelStyle),
          const SizedBox(height: 5)
        ],
        TextField(
          keyboardType: keyboardType,
          enabled: enabled,
          onSubmitted: onSubmit,
          controller: controller,
          maxLength: maxLength,
          style: textStyle,
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          focusNode: focusNode,
          decoration: InputDecoration(
            suffix: suffix,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: (enabled == false),
            fillColor: fillColor,
            hintText: hintText,
            errorText: errorText,
            hintStyle: hintStyle,
            isDense: isDense,
            isCollapsed: isCollapsed,
            contentPadding: EdgeInsets.all(ThemeCore.of(context).padding.l),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    ThemeCore.of(context).radius.extraLarge),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    ThemeCore.of(context).radius.extraLarge),
                borderSide: BorderSide(
                  color: ThemeCore.of(context).color.scheme.strokePrimary,
                  width: 1,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    ThemeCore.of(context).radius.extraLarge),
                borderSide: BorderSide(
                  color: ThemeCore.of(context).color.scheme.strokePrimary,
                  width: 1,
                )),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    ThemeCore.of(context).radius.extraLarge),
                borderSide: BorderSide(
                  color: ThemeCore.of(context).color.scheme.strokePrimary,
                  width: 1,
                )),
          ),
        ),
      ],
    );
  }

  factory TextFieldWidget.description({
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    int? maxLength,
    int? maxLines = 4,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,

  }) {
    return TextFieldWidget(
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      maxLength: maxLength,
      maxLines: maxLines,
      enabled: enabled,
      minLines: 5,
      isDense: isDense,
      hintStyle: hintStyle,
      textStyle: textStyle,
      filled: filled,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.email({
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    int? maxLength,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,

  }) {
    return TextFieldWidget(
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.emailAddress,
      enabled: enabled,
      filled: filled,
      fillColor: fillColor,
      isCollapsed: isCollapsed,
      isDense: isDense,
      hintStyle: hintStyle,
      textStyle: textStyle,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.number({
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    int? maxLength,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,
  }) {
    return TextFieldWidget(
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.number,
      enabled: enabled,
      maxLength: maxLength,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      filled: filled,
      isCollapsed: isCollapsed,
      isDense: isDense,
      hintStyle: hintStyle,
      textStyle: textStyle,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.phone({
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,

  }) {
    return TextFieldWidget(
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.phone,
      enabled: enabled,
      inputFormatters: [_phoneMask],
      filled: filled,
      isCollapsed: isCollapsed,
      isDense: isDense,
      hintStyle: hintStyle,
      textStyle: textStyle,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.date({
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,

  }) {
    return TextFieldWidget(
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.phone,
      enabled: enabled,
      inputFormatters: [_dateMask],
      filled: filled,
      isCollapsed: isCollapsed,
      isDense: isDense,
      hintStyle: hintStyle,
      textStyle: textStyle,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }
}
