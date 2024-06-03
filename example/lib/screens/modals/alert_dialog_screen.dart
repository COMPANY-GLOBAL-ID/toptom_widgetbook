import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String alertWithoutAction = context.knobs
        .string(label: 'without action bar', initialValue: 'content');
    final String alertWithAction =
        context.knobs.string(label: 'with action bar', initialValue: 'content');
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(ThemeCore.of(context).padding.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Alert Dialogs'),
            ButtonWidget(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialogWidget(
                      borderRadius: 26,
                      contentWidget: Text(alertWithAction),
                      titleText: 'Alert dialog',
                      actionsWidget: const Row(
                        children: [
                          Expanded(
                            child: ButtonWidget(
                              child: Text('Action 1'),
                            ),
                          ),
                          Expanded(
                            child: ButtonWidget(
                              child: Text('Action 2'),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text('show alert dialog'),
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialogWidget(
                      contentWidget: Text(alertWithoutAction),
                      titleText: 'Alert dialog',
                    );
                  },
                );
              },
              child: const Text('show alert dialog without action'),
            ),
          ],
        ),
      ),
    );
  }
}
