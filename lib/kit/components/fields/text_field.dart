import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'top_field.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
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
          TopField(label: label!, isRequired: isRequired),
          const SizedBox(height: 5)
        ],
        TextField(
          keyboardType: keyboardType,
          enabled: enabled,
          onSubmitted: onSubmit,
          controller: controller,
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            errorText: errorText,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(width: 1.5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
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
    int? maxLines = 8,
    bool? enabled,
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
    bool? enabled,
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
    bool? enabled,
    int? maxLength,
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
    );
  }
}
