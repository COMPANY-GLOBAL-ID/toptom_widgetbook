import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? hint = context.knobs.stringOrNull(label: 'Hint');
    final String? error = context.knobs.stringOrNull(label: 'Error');
    final String? label = context.knobs.stringOrNull(label: 'Label');
    final bool enabled =
        context.knobs.boolean(label: 'Enabled', initialValue: true);
    final Widget? prefixIcon = context.knobs.listOrNull(
        label: "Prefix Icon",
        options: [
          const Icon(Icons.search),
          const Icon(Icons.edit),
          const Icon(Icons.person),
          const Icon(Icons.security)
        ],
        initialOption: null);
    final Widget? suffixIcon = context.knobs.listOrNull(
        label: "Suffix Icon",
        options: [
          const Icon(Icons.search),
          const Icon(Icons.edit),
          const Icon(Icons.person),
          const Icon(Icons.security)
        ],
        initialOption: null);
    final int? maxLength = context.knobs.intOrNull.input(label: 'Max Length');
    final int? minLines = context.knobs.intOrNull.input(label: 'Min Lines');

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Input", style: ThemeCore.of(context).typography.h3),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "TextFieldWidget",
                style: ThemeCore.of(context).typography.paragraphBig,
              ),
            ),
            TextFieldWidget(
              suffixIcon: prefixIcon,
              prefixIcon: suffixIcon,
              label: label,
              hintText: hint,
              enabled: enabled,
              errorText: error,
              maxLength: maxLength,
              minLines: minLines,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "TextFieldWidget.description",
                style: ThemeCore.of(context).typography.paragraphBig,
              ),
            ),
            TextFieldWidget.description(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              label: label,
              hintText: hint,
              enabled: enabled,
              errorText: error,
              maxLength: maxLength,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "TextFieldWidget.phone",
                style: ThemeCore.of(context).typography.paragraphBig,
              ),
            ),
            TextFieldWidget.phone(
              hintText: hint,
              label: label,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              errorText: error,
              enabled: enabled,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "TextFieldWidget.email",
                style: ThemeCore.of(context).typography.paragraphBig,
              ),
            ),
            TextFieldWidget.email(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              hintText: hint,
              errorText: error,
              label: label,
              enabled: enabled,
              maxLength: maxLength,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "TextFieldWidget.number",
                style: ThemeCore.of(context).typography.paragraphBig,
              ),
            ),
            TextFieldWidget.number(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              hintText: hint,
              errorText: error,
              label: label,
              enabled: enabled,
              maxLength: maxLength,
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
