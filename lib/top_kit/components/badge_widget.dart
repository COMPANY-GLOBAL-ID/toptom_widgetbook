import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/material_states_property/padding_states_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

import '../constants_kit/color_kit.dart';


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
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ConstantsKit.rdM),
        color: color,
      ),
      child: Text(statusText,style: textStyle,),
    );
  }
  factory BadgeWidget.primaryMBadge({
    required String statusText,
    required Color color,
}) => BadgeWidget(
      color: color,
      textStyle: TextStylesKit.buttonS,
      statusText: statusText,
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4)
  );

  factory BadgeWidget.primarySBadge({
    required String statusText,
    required Color color,
  }) => BadgeWidget(
      color: color,
      textStyle: TextStylesKit.buttonS,
      statusText: statusText,
      padding: const EdgeInsets.all(1)
  );

  factory BadgeWidget.secondaryMBadge({
    required String statusText,
    required Color color,
  }) => BadgeWidget(
      color: ColorKit.colorBackgroundSecondary,
      textStyle: TextStylesKit.buttonS.copyWith(color: color),
      statusText: statusText,
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4)
  );

  factory BadgeWidget.secondarySBadge({
    required String statusText,
    required Color color,
  }) => BadgeWidget(
      color: ColorKit.colorBackgroundSecondary,
      textStyle: TextStylesKit.buttonS.copyWith(color: color),
      statusText: statusText,
      padding: const EdgeInsets.all(1)
  );
}
