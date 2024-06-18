import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

import '../helper/screen_widget.dart';

class StepperPage extends StatelessWidget {
  StepperPage({super.key});
  final StepperController controller = StepperController();

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      children: [
        StepperWidget(
          controller: controller,
        ),
      ],
    );
  }
}
