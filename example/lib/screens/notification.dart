import 'package:example/helper/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:widgetbook/widgetbook.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  _show(BuildContext context, SnackBarOptions options) => () {
        snackBarBuilder(context, options);
      };

  @override
  Widget build(BuildContext context) {
    final hasIcon = context.knobs.boolean(
      label: 'hasIcon',
    );
    final hasClose = context.knobs.boolean(
      label: 'hasClose',
    );
    final message = context.knobs.stringOrNull(
      label: 'message',
    );
    final title = context.knobs.string(
      label: 'title',
      initialValue: 'Title',
    );
    return ScreenWidget(
      children: [
        const Text("Border radius",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        ...SnackBarType.values.map((e) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: e.toBackgroundColor(context),
              foregroundColor: e.toForegroundColor(context),
            ),
            onPressed: _show(
                context,
                SnackBarOptions(
                  type: e,
                  title: title,
                  message: message,
                  hasIcon: hasIcon,
                  hasClose: hasClose,
                )),
            child: Text('Show notification ${e.name}'),
          );
        }),
      ],
    );
  }
}
