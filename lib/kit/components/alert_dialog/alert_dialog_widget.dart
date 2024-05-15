import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class AlertDialogWidget extends StatelessWidget {
  final Widget? titleWidget;
  final Widget? contentWidget;
  final double? borderRadius;
  final EdgeInsets? insetPadding;
  final Widget? actionsWidget;
  final EdgeInsets? contentPadding;
  final String? titleText;

  const AlertDialogWidget({
    super.key,
    this.titleWidget,
    this.contentWidget,
    this.contentPadding,
    this.borderRadius,
    this.actionsWidget,
    this.insetPadding,
    this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: insetPadding,
      contentPadding: contentPadding,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
      ),
      title: titleText != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titleText!,
                  style: ThemeCore.of(context).typography.h6.copyWith(
                        fontWeight: FontWeight.w500,
                        color:Colors.black , 
                      ),
                ),
                titleWidget ?? const SizedBox(),
              ],
            )
          : null,
      content: contentWidget,
      actions: actionsWidget != null ? <Widget>[actionsWidget!] : null,
    );
  }
}
