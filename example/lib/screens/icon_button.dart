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
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text(
            'Checkbox',
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  _checkBoxValue = value!;
                  setState(() {});
                },
              ),
            ],
          ),
          const Text(
            'Icon Button',
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.whiteXl(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteL(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteM(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteS(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.defaultXl(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultL(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultM(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultS(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.outlineXl(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineL(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineM(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineS(
                      icon: ToptomIcons.arrow_right,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
