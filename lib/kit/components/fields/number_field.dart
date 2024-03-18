import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'top_field.dart';

class ToptomNumberField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onSubmit;
  final bool? enabled;
  final int? maxLength;

  const ToptomNumberField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.onSubmit,
    this.prefixIcon,
    this.hintText,
    this.enabled,
    this.maxLength,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          TopField(label: label!, isRequired: isRequired),
          const SizedBox(height: 5),
        ],
        SizedBox(
          child: TextField(
            enabled: enabled,
            onSubmitted: onSubmit,
            controller: controller,
            keyboardType: TextInputType.number,
            maxLength: maxLength,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              prefix: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: prefixIcon,
              ),
              errorText: errorText,
              suffix: suffixIcon,
              hintText: hintText,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                    width: 1.5
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
