import 'package:flutter/material.dart';

import 'top_field.dart';

class ToptomDescriptionField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool isRequired;
  final int? maxLength;
  final Color? color;
  final TextStyle? hintStyle;
  final bool? enabled;

  const ToptomDescriptionField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.hintText,
    this.maxLength,
    this.color,
    this.hintStyle,
    this.enabled,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (label != null) ...[
        TopField(label: label!, isRequired: isRequired),
        const SizedBox(height: 5),
      ],
      TextField(
        enabled: enabled,
        controller: controller,
        maxLines: 5,
        maxLength: maxLength,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          errorText: errorText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(width: 1.5),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      )
    ]);
  }
}
