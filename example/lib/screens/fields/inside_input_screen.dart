import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/components.dart';
import 'package:widgetbook/widgetbook.dart';

class InsideInputScreen extends StatelessWidget {
  const InsideInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? hint = context.knobs.stringOrNull(label: 'Hint');
    final String? error = context.knobs.stringOrNull(label: 'Error');
    final String? label = context.knobs.stringOrNull(label: 'Label');
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          InsideInputWidget<IconData>(
            hint: hint == null ? null : Text(hint),
            label: label == null ? null : Text(label),
            errorText: error,
            items: const [Icons.access_time, Icons.add, Icons.access_alarm],
            builder: (icon, hasError) {
              return DropdownMenuItem<IconData>(value: icon, child: Icon(icon));
            },
            controller: MultiSelectController(
              values: [Icons.access_time],
            ),
          ),
        ],
      ),
    );
  }
}
