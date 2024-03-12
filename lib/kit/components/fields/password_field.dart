import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'top_field.dart';

class ToptomPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final bool isRequired;
  final String visibilityIcon;
  final String visibilityOffIcon;
  final bool? enabled;
  final String? errorText;

  const ToptomPasswordField(
      {super.key,
      this.controller,
      this.label,
      this.isRequired = false,
      this.hintText,
      required this.visibilityIcon,
      required this.visibilityOffIcon,
      this.enabled,
      this.errorText});

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
          TopField(label: widget.label!, isRequired: widget.isRequired),
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(232, 232, 232, 1), width: 1.5)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              suffixIcon: GestureDetector(
                onTap: () => setState(() => obscureText = !obscureText),
                child: SvgPicture.asset(
                    obscureText
                        ? widget.visibilityOffIcon
                        : widget.visibilityIcon,
                    fit: BoxFit.scaleDown),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
