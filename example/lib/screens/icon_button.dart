import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

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
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteL(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteM(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteS(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.defaultXl(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultL(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultM(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultS(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.outlineXl(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineL(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineM(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineS(
                      assetName: IconsKit.arrowRigth,
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
