import 'package:toptom_widgetbook/kit/components/multi_select_input.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Buttons",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...ButtonType.values.map(
              (type) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        type.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Wrap(
                      children: ButtonColor.values.map(
                        (color) {
                          return Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: ButtonSize.values.map(
                              (size) {
                                return ButtonWidget(
                                  size: size,
                                  type: type,
                                  color: color,
                                  onPressed: () {},
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('Lorem ipsum'),
                                      SizedBox(width: 10),
                                      Icon(ToptomIcons.arrow_right)
                                    ],
                                  ),
                                );
                              },
                            ).toList(),
                          );
                        },
                      ).toList(),
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            SelectInputWidget<String>(
              items: ['all', 'male', 'women'],
              builder: (item) => DropdownMenuItem(
                child: Text(item),
                value: item,
              ),
              controller: SelectInputController(),
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
              height: 2000,
            ),
          ],
        ),
      ),
    );
  }
}
