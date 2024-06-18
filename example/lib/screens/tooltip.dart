import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

import '../helper/screen_widget.dart';

class ToolTipScreen extends StatelessWidget {
  const ToolTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      children: [
        ToolTipWidget(
          title: "Title",
          content: Text("Subtitle"),
        ),
        ToolTipWidget(
          title: "Title",
          content: Text("Subtitle"),
        ),
      ],
    );
  }
}
