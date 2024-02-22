import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit_export.dart';


class BorderRadiusWidget extends StatelessWidget {
  const BorderRadiusWidget({Key? key, required this.radius}) : super(key: key);

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 200,
      decoration: BoxDecoration(
        color: ColorKit.boxBackgroundGrey,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: ColorKit.boxBorderGrey, width: 1),
      ),
    );
  }

  //factory
  factory BorderRadiusWidget.rd() =>
      const BorderRadiusWidget(radius: ConstantsKit.rdM);

  factory BorderRadiusWidget.rdLg() =>
      const BorderRadiusWidget(radius: ConstantsKit.rdLg);

  factory BorderRadiusWidget.rdXl() =>
      const BorderRadiusWidget(radius: ConstantsKit.rdXl);

  factory BorderRadiusWidget.rd2Xl() =>
      const BorderRadiusWidget(radius: ConstantsKit.rd2Xl);

  factory BorderRadiusWidget.rd3Xl() =>
      const BorderRadiusWidget(radius: ConstantsKit.rd3Xl);

  factory BorderRadiusWidget.rd4Xl() =>
      const BorderRadiusWidget(radius: ConstantsKit.rd4Xl);

  factory BorderRadiusWidget.rd5Xl() =>
      const BorderRadiusWidget(radius: ConstantsKit.rd5Xl);

  factory BorderRadiusWidget.rd6Xl() =>
      const BorderRadiusWidget(radius: ConstantsKit.rd6Xl);
}
