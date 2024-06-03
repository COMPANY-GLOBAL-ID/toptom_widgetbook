import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:widgetbook/widgetbook.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String text =
        context.knobs.string(label: 'Text button', initialValue: 'Lorem Ipsum');
    final Icon? icon = context.knobs.listOrNull(label: 'Icon', options: [
      const Icon(Icons.access_time),
      const Icon(Icons.arrow_forward_ios)
    ]);
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
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(text),
                                      if (icon != null) ...[
                                        const SizedBox(width: 10),
                                        icon
                                      ]
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
          ],
        ),
      ),
    );
  }
}
