import 'package:flutter/material.dart';

import 'top_field.dart';

class ToptomEmailField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? enabled;

  final Function(String)? onSubmit;

  const ToptomEmailField({
    super.key,
    this.enabled,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit,
    this.hintText,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          TopField(
            label: label!,
            isRequired: isRequired,
          ),
        const SizedBox(height: 5),
        SizedBox(
          child: TextField(
            enabled: enabled,
            keyboardType: TextInputType.emailAddress,
            onSubmitted: onSubmit,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              prefix: prefixIcon,
              suffix: suffixIcon,
              errorText: errorText,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  width: 1.5,
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }
}
