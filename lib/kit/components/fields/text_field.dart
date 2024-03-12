import 'package:flutter/material.dart';

import 'top_field.dart';

class ToptomTextField extends StatelessWidget {
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

  const ToptomTextField({
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
  });

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
          enabled: enabled,
          onSubmitted: onSubmit,
          controller: controller,
          maxLength: maxLength,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            errorText: errorText,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                    color: Color.fromRGBO(232, 232, 232, 1), width: 1.5)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}
