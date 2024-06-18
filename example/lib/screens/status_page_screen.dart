import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:widgetbook/widgetbook.dart';

import '../helper/screen_widget.dart';

class StatusPageScreen extends StatelessWidget {
  const StatusPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String title =
        context.knobs.string(label: 'status title', initialValue: 'title');
    final String description = context.knobs
        .string(label: 'status description', initialValue: 'description');
    final String text =
        context.knobs.string(label: 'status child', initialValue: 'child');
    final Icon icon = context.knobs.list(
      label: 'icon',
      options: [
        const Icon(Icons.access_time),
      ],
    );
    return ScreenWidget(
      children: [
        StatusPageWidget(
          title: title,
          description: description,
          onPressed: () {},
          icon: icon,
          child: Text(text),
        ),
      ]
    );
  }
}
