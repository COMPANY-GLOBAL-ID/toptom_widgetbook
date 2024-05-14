import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? hint = context.knobs.stringOrNull(label: 'Hint');
    final String? error = context.knobs.stringOrNull(label: 'Error');
    final String? label = context.knobs.stringOrNull(label: 'Label');
    final bool enabled =
        context.knobs.boolean(label: 'Enabled', initialValue: true);
    final Widget? hideIcon = context.knobs.listOrNull(
        label: "Hide Icon",
        options: [
          const Icon(Icons.search),
          const Icon(Icons.edit),
          const Icon(Icons.person),
          const Icon(Icons.security)
        ],
        initialOption: null);
    final Widget? showIcon = context.knobs.listOrNull(
        label: "Show Icon",
        options: [
          const Icon(Icons.search),
          const Icon(Icons.edit),
          const Icon(Icons.person),
          const Icon(Icons.security)
        ],
        initialOption: null);

    final Widget? prefixIcon = context.knobs.listOrNull(
        label: "Prefix Icon",
        options: [
          const Icon(Icons.search),
          const Icon(Icons.edit),
          const Icon(Icons.person),
          const Icon(Icons.security)
        ],
        initialOption: null);
    final int? maxLength = context.knobs.intOrNull.input(label: 'Max Length');

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          PasswordFieldWidget(
            hideIcon: hideIcon,
            showIcon: showIcon,
            prefixIcon: prefixIcon,
            label: label,
            hintText: hint,
            enabled: enabled,
            errorText: error,
            maxLength: maxLength,
          ),
        ],
      ),
    );
  }
}
