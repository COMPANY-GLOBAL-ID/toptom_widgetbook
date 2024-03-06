import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class StepperPage extends StatelessWidget {
  const StepperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StepperWidget(),
              StepperWidget(),
              StepperWidget(),
            ],
          )
        ],
      ),
    );
  }
}
