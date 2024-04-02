import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class TopField extends StatelessWidget {
  final String label;
  final bool isRequired;
  final TextStyle? style;

  const TopField({
    super.key,
    required this.label,
    required this.isRequired,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: label),
          if (isRequired)
            const TextSpan(
              text: '*',
              style: TextStyle(color: Colors.red),
            ),
        ],
      ),
      style: ThemeCore.of(context)
          .typography
          .paragraphSmall
          .copyWith(
            color: ThemeCore.of(context).color.scheme.textSecondary,
            fontWeight: FontWeight.w500,
          )
          .merge(style),
    );
  }
}
