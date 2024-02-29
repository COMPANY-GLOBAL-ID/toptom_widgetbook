import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';
import 'package:widgetbook/widgetbook.dart';

class DoubleInputScreen extends StatelessWidget {
  const DoubleInputScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final title = context.knobs.string(label: "Title");
    final padding = context.knobs.double.input(label: 'Padding', );

    final TextEditingController minController1 = TextEditingController();
    final TextEditingController maxController1 = TextEditingController();
    final TextEditingController minController2 = TextEditingController();
    final TextEditingController maxController2 = TextEditingController();
    final TextEditingController minController3 = TextEditingController();
    final TextEditingController maxController3 = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: DoubleInput.sizeXl(
              minController: minController1,
              maxController: maxController1,
              minHintText: "Text Input 1",
              maxHintText: "Text Input 2",
              enabled: true,
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(padding),
            child: DoubleInput.sizeL(
              minController: minController2,
              maxController: maxController2,
              minHintText: "Text Input 1",
              maxHintText: "Text Input 2",
              enabled: true,
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(padding),
            child: DoubleInput.sizeS(
              minController: minController3,
              maxController: maxController3,
              minHintText: "Text Input 1",
              maxHintText: "Text Input 2",
              enabled: true,
            ),
          ),
        ],
      ),
    );
  }
}
