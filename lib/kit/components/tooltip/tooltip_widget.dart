import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ToolTipWidget extends StatelessWidget {
  final String title;
  final Widget? content;
  const ToolTipWidget({
    super.key,
    required this.title,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: ThemeCore.of(context)
                    .typography
                    .paragraphMedium
                    .copyWith(
                        color: ThemeCore.of(context).color.scheme.textPrimary,
                        fontWeight: FontWeight.w600)
                // style: TextStylesKit.buttonXl.copyWith(
                //     color: ColorKit.colorTextPrimary, fontWeight: FontWeight.w600),
                ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: ThemeCore.of(context).color.scheme.overlayPrimary,
                ),
                child: Icon(
                  ToptomIcons.cross,
                  color: ThemeCore.of(context).color.scheme.textPrimary,
                ),
              ),
            )
          ],
        ),
        content: content,
        contentTextStyle: ThemeCore.of(context)
            .typography
            .paragraphMedium
            .copyWith(color: ThemeCore.of(context).color.scheme.textSecondary));
  }
}
