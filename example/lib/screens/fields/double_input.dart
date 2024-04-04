import 'package:flutter/cupertino.dart';
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
    final title = context.knobs.string(label: "Title");
    final padding = context.knobs.double.input(
      label: 'Padding',
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: DoubleInput(
              controller: DoubleEditingController(),
              min: 10,
              max: 20,
              errorText: 'dsadsadasda',
            ),
          ),
        ],
      ),
    );
  }
}
