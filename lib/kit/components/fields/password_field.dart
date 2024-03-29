import 'package:flutter/material.dart';

import 'top_field.dart';

class ToptomPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final Widget visibilityIcon;
  final Widget visibilityOffIcon;
  final bool? enabled;
  final String? errorText;

  const ToptomPasswordField({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.hintText,
    required this.visibilityIcon,
    required this.visibilityOffIcon,
    this.enabled,
    this.errorText,
  });

  @override
  State<ToptomPasswordField> createState() => _ToptomPasswordFieldState();
}

class _ToptomPasswordFieldState extends State<ToptomPasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          TopField(
            label: widget.label!,
            isRequired: widget.isRequired,
          ),
          const SizedBox(height: 5),
        ],
        SizedBox(
          child: TextField(
            enabled: widget.enabled,
            controller: widget.controller,
            obscureText: obscureText,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              errorText: widget.errorText,
              hintText: widget.hintText,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 1.5),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              suffixIcon: GestureDetector(
                onTap: () => setState(() => obscureText = !obscureText),
                child: obscureText
                    ? widget.visibilityOffIcon
                    : widget.visibilityIcon,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
