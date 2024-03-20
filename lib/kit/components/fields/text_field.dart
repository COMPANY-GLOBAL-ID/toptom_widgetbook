import 'package:flutter/material.dart';

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

  const TextFieldWidget(
      {super.key,
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
      this.minLines = 1});

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
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            errorText: errorText,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(width: 1.5),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
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
}
