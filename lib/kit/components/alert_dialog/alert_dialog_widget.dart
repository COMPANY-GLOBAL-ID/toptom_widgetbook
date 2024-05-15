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
  final TextStyle? titleTextStyle;
  const AlertDialogWidget({
    super.key,
    this.titleWidget,
    this.titleTextStyle,
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
      insetPadding:
          insetPadding ?? EdgeInsets.all(ThemeCore.of(context).padding.xl),
      contentPadding:
          contentPadding ?? EdgeInsets.all(ThemeCore.of(context).padding.xl),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          borderRadius ?? ThemeCore.of(context).radius.extraLarge4,
        ),
      ),
      title: titleText != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titleText!,
                  style: titleText != null
                      ? titleTextStyle
                      : ThemeCore.of(context).typography.h6.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                ),
                titleWidget ?? const SizedBox(),
              ],
            )
          : null,
      content: contentWidget != null
          ? Builder(builder: (context) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: contentWidget!,
              );
            })
          : contentWidget,
      actions: actionsWidget != null ? <Widget>[actionsWidget!] : null,
    );
  }
}
