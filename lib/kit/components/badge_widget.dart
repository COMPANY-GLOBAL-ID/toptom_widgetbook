import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    super.key,
    required this.color,
    required this.statusText,
    this.textStyle,
    required this.padding,
  });
  final Color color;
  final String statusText;
  final TextStyle? textStyle;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        color: color,
      ),
      child: Padding(
        padding: padding,
        child: Text(statusText, style: textStyle),
      ),
    );
  }

  factory BadgeWidget.primaryM({
    required String statusText,
    required Color color,
  }) =>
      BadgeWidget(
        color: color,
        textStyle: TextStylesKit.buttonS,
        statusText: statusText,
        padding: ConstantsKit.EdgeInsetsM,
      );

  factory BadgeWidget.primaryS({
    required String statusText,
    required Color color,
  }) =>
      BadgeWidget(
        color: color,
        textStyle: TextStylesKit.buttonS,
        statusText: statusText,
        padding: ConstantsKit.EdgeInsetsS,
      );

  factory BadgeWidget.secondaryM({
    required String statusText,
    required Color color,
  }) =>
      BadgeWidget(
        color: ColorKit.colorBackgroundSecondary,
        textStyle: TextStylesKit.buttonS.copyWith(color: color),
        statusText: statusText,
        padding: ConstantsKit.EdgeInsetsM,
      );

  factory BadgeWidget.secondaryS({
    required String statusText,
    required Color color,
  }) =>
      BadgeWidget(
        color: ColorKit.colorBackgroundSecondary,
        textStyle: TextStylesKit.buttonS.copyWith(color: color),
        statusText: statusText,
        padding: ConstantsKit.EdgeInsetsS,
      );
}
