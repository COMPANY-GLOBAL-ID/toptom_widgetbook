import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/buttons/elevated_button.dart';
import 'package:toptom_components/extends/num.dart';
import 'package:toptom_theme/toptom_theme.dart';
import 'package:toptom_widgetbook/src/extends/snackbar.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SnackBars',
  type: SnackBar,
)
Widget textFields(BuildContext context) {
  final title = context.knobs.string(
    label: 'Title',
    initialValue: 'Title',
  );
  final description = context.knobs.string(
    label: 'Description',
    initialValue: 'Description',
  );
  final hasIcon = context.knobs.boolean(
    label: 'With Icon',
    initialValue: true
  );
  final hasCancel = context.knobs.boolean(
      label: 'With cancel button',
      initialValue: true
  );
  return Scaffold(
    body: Padding(
      padding: 20.p,
      child: Column(
        children: [
          ...SnackBarType.values.map((e) {
            return Padding(
              padding: 5.vp,
              child: ToptomElevatedButton(
                  color: e.toBackgroundColor(context),
                  foregroundColor: e.toForegroundColor(context),
                  onPressed: () => snackBar(context, SnackBarOptions(
                    title: title,
                    type: e,
                    hasCancel: hasCancel,
                    hasIcon: hasIcon
                  )),
                  child: Text(e.name)
              ),
            );
          }),

          Divider(),

          ...SnackBarType.values.map((e) {
            return Padding(
              padding: 5.vp,
              child: ToptomElevatedButton(
                  color: e.toBackgroundColor(context),
                  foregroundColor: e.toForegroundColor(context),
                  onPressed: () => snackBar(context, SnackBarOptions(
                      title: title,
                      type: e,
                      description: description,
                      hasCancel: hasCancel,
                      hasIcon: hasIcon
                  )),
                  child: Text(e.name)
              ),
            );
          })
        ],
      ),
    ),
  );
}


enum SnackBarType {
  standard, success, danger, warning, white;

  IconData get toIcon {
    return switch(this) {
      SnackBarType.standard => Icons.info_outline_rounded,
      SnackBarType.success => Icons.check_circle,
      SnackBarType.danger => Icons.cancel,
      SnackBarType.warning => Icons.warning_amber_rounded,
      SnackBarType.white => Icons.info_outline_rounded,
    };
  }
  
  Color toBackgroundColor(BuildContext context) {
    return switch(this) {
      SnackBarType.standard => AppColor.of(context).colorScheme.standard,
      SnackBarType.success => AppColor.of(context).colorScheme.success,
      SnackBarType.danger => AppColor.of(context).colorScheme.error,
      SnackBarType.warning => AppColor.of(context).colorScheme.warning,
      SnackBarType.white => Colors.white,
    };
  }

  Color toForegroundColor(BuildContext context) {
    return switch(this) {
      SnackBarType.standard => AppColor.of(context).colorScheme.onStandard,
      SnackBarType.success => AppColor.of(context).colorScheme.onSuccess,
      SnackBarType.danger => AppColor.of(context).colorScheme.onError,
      SnackBarType.warning => AppColor.of(context).colorScheme.onWarning,
      SnackBarType.white => Colors.black,
    };
  }
}

class SnackBarOptions {
  final String title;
  final String? description;
  final SnackBarType type;
  final bool hasIcon;
  final bool hasCancel;

  SnackBarOptions({
    required this.title,
    this.description,
    this.type = SnackBarType.standard,
    this.hasIcon = true,
    this.hasCancel = true,
  });
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(BuildContext context, SnackBarOptions options) {
  return SnackBar(
      elevation: 12,
      behavior: SnackBarBehavior.floating,
      backgroundColor: options.type.toBackgroundColor(context),
      duration: Duration(seconds: 5),
      margin: 20.p,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(options.hasIcon) ...[
            Icon(
              options.type.toIcon,
              color: options.type.toForegroundColor(context),
            ),
            15.w,
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(options.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: options.type.toForegroundColor(context),
                  ),
                ),
                if(options.description != null) Text(options.description!,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: options.type.toForegroundColor(context),
                  ),
                ),
              ],
            ),
          ),
          if(options.hasCancel) ...[
            15.w,
            Icon(
              Icons.exit_to_app,
              color: options.type.toForegroundColor(context),
            ),
          ]
        ],
      )
  ).view(context);
}