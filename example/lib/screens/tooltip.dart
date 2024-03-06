import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/tooltip_widget.dart';

class ToolTipScreen extends StatelessWidget {
  const ToolTipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
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
      ),
    );
  }
}
