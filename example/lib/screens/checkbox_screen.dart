import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class CheckboxScreen extends StatelessWidget {
  const CheckboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Checkbox", style: ThemeCore.of(context).typography.h4),
            const SizedBox(
              height: 20,
            ),
            Text("CheckboxWidget", style: ThemeCore.of(context).typography.h6),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CheckboxWidget(
                  value: 1 % 2 == 0,
                  onChanged: (bool? a) {},
                ),
                CheckboxWidget(
                  value: 2 % 2 == 0,
                  onChanged: (bool? a) {},
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text("CheckboxListTileWidget",
                style: ThemeCore.of(context).typography.h6),
            const SizedBox(
              height: 10,
            ),
            CheckboxListTileWidget(
              title: const Text('CheckBox 1'),
              value: 1 % 2 == 0,
              onChanged: (bool? a) {},
            ),
            CheckboxListTileWidget(
              title: const Text('CheckBox 2'),
              value: 2 % 2 == 0,
              onChanged: (bool? a) {},
            )
          ],
        ),
      ),
    );
  }
}
