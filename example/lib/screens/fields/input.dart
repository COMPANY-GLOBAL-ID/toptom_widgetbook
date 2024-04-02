import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Input", style: ThemeCore.of(context).typography.h3),
            const SizedBox(
              height: 10,
            ),
            TextFieldWidget(
              label: "TextFieldWidget",
              controller: textEditingController,
              enabled: false,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.description",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.description(
              label: "TextFieldWidget.description",
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.phone",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.phone(
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.email",
                style: ThemeCore.of(context).typography.paragraphBig
            ),
            TextFieldWidget.email(
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.number",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.number(
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.date",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.date(
              controller: textEditingController,
              enabled: false,
            ),
            Text("SelectInputWidget",
                style: ThemeCore.of(context).typography.paragraphBig,
            ),
            Row(
              children: [
                Expanded(
                  child: SelectInputWidget<String>(
                    label: Text('Select gender'),
                    items: ['all', 'male', 'women'],
                    builder: (item) => DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    ),
                    controller: SelectInputController(),
                  ),
                ),
                Expanded(
                  child: TextFieldWidget(
                    label: "TextFieldWidget",
                    controller: textEditingController,
                  ),
                ),
              ],
            ),

            Text("MultiSelectInput",
              style: ThemeCore.of(context).typography.paragraphBig,
            ),
            MultiSelectInput(
              clearText: 'Clear',
              label: 'Select',
              hint: const Text('Select'),
              items: ['all', 'male', 'women'],
              builder: (item) => DropdownMenuItem(
                child: Text(item),
                value: item,
              ),
              controller: MultiSelectController(),
              builderChip: (value) {
                return BadgeWidget(
                  type: BadgeType.outlined,
                  color: BadgeColor.neutral,
                  size: BadgeSize.small,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(value.toString()),
                      SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.close),
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
