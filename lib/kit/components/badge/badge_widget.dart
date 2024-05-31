import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class BadgeWidget extends StatelessWidget {
  final BadgeColor color;
  final BadgeType type;
  final BadgeSize size;
  final Widget child;

  const BadgeWidget({
    super.key,
    this.color = BadgeColor.info,
    this.type = BadgeType.primary,
    this.size = BadgeSize.primary,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ThemeCore.of(context).radius.medium,
        ),
        color: type.toBackground(context, color),
      ),
      child: Padding(
        padding: size.toPadding(context),
        child: Theme(
          data: ThemeData(
            iconTheme: IconThemeData(
              color: type.toForeground(context, color), // Новый цвет иконок
              size: size.toSizeIcon(), // Новый размер иконок
            ),
          ),
          child: DefaultTextStyle(
            style: ThemeCore.of(context).typography.paragraphSmall.copyWith(
                  color: type.toForeground(context, color),
                ),
            child: child,
          ),
        ),
      ),
    );
  }
}
