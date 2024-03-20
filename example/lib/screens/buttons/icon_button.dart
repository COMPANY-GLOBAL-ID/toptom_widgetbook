import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class IconButtonScreen extends StatefulWidget {
  const IconButtonScreen({super.key});

  @override
  State<IconButtonScreen> createState() => _IconButtonScreenState();
}

class _IconButtonScreenState extends State<IconButtonScreen> {
  bool _checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // const Text(
          //   'Checkbox',
          //   textAlign: TextAlign.center,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Checkbox(
          //       value: _checkBoxValue,
          //       onChanged: (value) {
          //         _checkBoxValue = value!;
          //         setState(() {});
          //       },
          //     ),
          //   ],
          // ),
          const Text(
            "Icon Buttons",
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
                          children: ButtonIconSize.values.map(
                            (size) {
                              return ButtonIcon(
                                size: size,
                                type: type,
                                color: color,
                                onPressed: () {},
                                icon: ToptomIcons.arrow_forward_right,
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
    );
  }
}
