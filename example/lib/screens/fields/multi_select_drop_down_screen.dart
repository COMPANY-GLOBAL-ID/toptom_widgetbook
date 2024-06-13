import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/components.dart';
import 'package:widgetbook/widgetbook.dart';

class MultiSelectDropDownScreen extends StatelessWidget {
  const MultiSelectDropDownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String? hint = context.knobs.stringOrNull(label: 'Hint');
    final String? error = context.knobs.stringOrNull(label: 'Error');
    final String label = context.knobs.string(label: 'Label');
    final bool enabled =
        context.knobs.boolean(label: 'Enabled', initialValue: true);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          MultiSelectDropdown(
            maxItemCount: 2,
            hint: hint == null ? null : Text(hint),
            label: label,
            errorText: error,
            items: const [
              Icons.access_time,
              Icons.add,
              Icons.access_alarm,
              Icons.abc
            ],
            builder: (icon, hasError) {
              return DropdownMenuItem<IconData>(value: icon, child: Icon(icon));
            },
            controller: MultiSelectController(
              values: [Icons.access_time],
            ),
            builderChip: (IconData icon) {
              return ButtonWidget(
                child: Icon(icon),
              );
            },
          )
        ],
      ),
    );
  }
}
