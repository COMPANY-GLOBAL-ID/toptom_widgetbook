import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/components.dart';
import 'package:toptom_widgetbook/kit/components/select_input_widget.dart';
import 'package:widgetbook/widgetbook.dart';

class SelectInputScreen extends StatefulWidget {
  final SelectInputController controller = SelectInputController();
  SelectInputScreen({
    super.key,
  });

  @override
  State<SelectInputScreen> createState() => _SelectInputScreenState();
}

class _SelectInputScreenState extends State<SelectInputScreen> {
  @override
  Widget build(BuildContext context) {
    final String? hint = context.knobs.stringOrNull(label: 'Hint');
    final String? error = context.knobs.stringOrNull(label: 'Error');
    final String? label = context.knobs.stringOrNull(label: 'Label');

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SelectInputWidget<IconData>(
              hint: hint == null ? null : Text(hint),
              label: label == null ? null : Text(label),
              errorText: error,
              items: const [Icons.access_time, Icons.add, Icons.access_alarm],
              builder: (icon, hasError) {
                return DropdownMenuItem<IconData>(
                    value: icon, child: Icon(icon));
              },
              controller: SelectInputController(
                value: Icons.access_time,
              ))
        ],
      ),
    );
  }
}
