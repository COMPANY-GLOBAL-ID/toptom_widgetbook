import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class StepperPage extends StatelessWidget {
  StepperPage({super.key});
  final StepperController controller = StepperController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StepperWidget(
                controller: controller,
              ),
            ],
          )
        ],
      ),
    );
  }
}
