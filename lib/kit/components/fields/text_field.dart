import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
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
  final String? obscureText;

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
    this.labelStyle,
    this.filled,
    this.fillColor,
    this.suffix,
    this.isCollapsed,
    this.focusNode,
    this.obscureText,
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
    final ColorSchemeKit colors = ThemeCore.of(context).color.scheme;
    final TextStyle paragraphSmall =
        ThemeCore.of(context).typography.paragraphSmall;
    final double radius = ThemeCore.of(context).radius.extraLarge;
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
          obscureText: obscureText != null,
          obscuringCharacter: obscureText ?? '*',
          style: paragraphSmall.copyWith(
              fontWeight: FontWeight.w500,
              color: errorText != null ? colors.errorPrimary : null),
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          focusNode: focusNode,
          decoration: InputDecoration(
            errorStyle: paragraphSmall.copyWith(
                color: colors.errorPrimary, fontWeight: FontWeight.w400),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  radius,
                ),
                borderSide: BorderSide(
                  color: colors.errorPrimary,
                  width: 1,
                )),
            suffix: suffix,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: (enabled == false),
            fillColor: fillColor,
            hintText: hintText,
            errorText: errorText,
            hintStyle: paragraphSmall.copyWith(
              color: errorText != null
                  ? colors.errorPrimary
                  : colors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
            isDense: isDense,
            isCollapsed: isCollapsed,
            contentPadding: EdgeInsets.all(ThemeCore.of(context).padding.l),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  radius,
                ),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  radius,
                ),
                borderSide: BorderSide(
                  color: colors.strokePrimary,
                  width: 1,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  radius,
                ),
                borderSide: BorderSide(
                  color: colors.strokePrimary,
                  width: 1,
                )),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  radius,
                ),
                borderSide: BorderSide(
                  color: colors.strokePrimary,
                  width: 1,
                )),
          ),
        ),
      ],
    );
  }

  factory TextFieldWidget.description({
    Key? key,
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
      key: key,
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
      filled: filled,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.email({
    Key? key,
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
      key: key,
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
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.number({
    Key? key,
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
      key: key,
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
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.phone({
    Key? key,
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
      key: key,
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
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.date({
    Key? key,
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
      key: key,
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
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.password({
    Key? key,
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
      key: key,
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      maxLength: maxLength,
      enabled: enabled,
      filled: filled,
      fillColor: fillColor,
      isCollapsed: isCollapsed,
      isDense: isDense,
      focusNode: focusNode,
      keyboardType: TextInputType.visiblePassword,
      obscureText: '*',
    );
  }
}
