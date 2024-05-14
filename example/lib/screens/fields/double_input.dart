import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class DoubleInputScreen extends StatelessWidget {
  final TextEditingController minController1 = TextEditingController();
  final TextEditingController maxController1 = TextEditingController();
  DoubleInputScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double min =
        context.knobs.double.input(label: 'Min', initialValue: 0);
    final double max =
        context.knobs.double.input(label: 'Max', initialValue: 100);
    final String? error = context.knobs.stringOrNull(label: 'Error Text');
    final String? clear = context.knobs.stringOrNull(label: 'Clear Text');
    final String? label = context.knobs.stringOrNull(label: 'Label Text');
    final String? minHintText =
        context.knobs.stringOrNull(label: 'Min Hint Text');
    final String? maxHintText =
        context.knobs.stringOrNull(label: 'Max Hint Text');
    final bool enabled =
        context.knobs.boolean(label: 'Enabled', initialValue: true);

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          DoubleInput(
            controller: DoubleEditingController(),
            label: label,
            min: min,
            max: max,
            minHintText: minHintText,
            maxHintText: maxHintText,
            errorText: error,
            clearText: clear,
            enabled: enabled,
          ),
        ],
      ),
    );
  }
}
