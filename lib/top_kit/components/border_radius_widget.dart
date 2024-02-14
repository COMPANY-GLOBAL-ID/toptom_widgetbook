import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';

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
}
