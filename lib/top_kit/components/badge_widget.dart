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
    required this.textStyle,
    required this.padding,
  });
  final Color color;
  final String statusText;
  final TextStyle textStyle;
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
  factory BadgeWidget.paddingMBadge({
    required String statusText,
    required Color color,
}) => BadgeWidget(
      color: color,
      textStyle: TextStylesKit.buttonS,
      statusText: statusText,
      padding: PaddingStatesKit.paddingMBadge
  );

  factory BadgeWidget.paddingSBadge({
    required String statusText,
    required Color color,
  }) => BadgeWidget(
      color: color,
      textStyle: TextStylesKit.buttonS,
      statusText: statusText,
      padding: PaddingStatesKit.paddingSBadge
  );
}

class SecondaryBadgeWidget extends StatelessWidget {
  const SecondaryBadgeWidget({
    super.key,
    required this.color,
    required this.statusText,
    required this.textStyle,
    required this.padding,
  });
  final Color color;
  final String statusText;
  final TextStyle textStyle;
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
  factory SecondaryBadgeWidget.paddingMBadge({
    required String statusText,
    required Color color,
  }) => SecondaryBadgeWidget(
      color: ColorKit.colorBackgroundSecondary,
      textStyle: TextStylesKit.buttonS.copyWith(color: color),
      statusText: statusText,
      padding: PaddingStatesKit.paddingMBadge
  );
  factory SecondaryBadgeWidget.paddingSBadge({
    required String statusText,
    required Color color,
  }) => SecondaryBadgeWidget(
      color: ColorKit.colorBackgroundSecondary,
      textStyle: TextStylesKit.buttonS.copyWith(color: color),
      statusText: statusText,
      padding: PaddingStatesKit.paddingSBadge
  );
}
