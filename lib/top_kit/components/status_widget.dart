import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class StatusWidget extends StatelessWidget {
  final String svgIcon;
  final String title;
  final String description;
  final VoidCallback? onPressed;
  const StatusWidget({
    super.key,
    required this.svgIcon,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorKit.colorBackgroundSecondary,
        borderRadius: BorderRadius.circular(RadiusType.rd4Xl.radius)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: ColorKit.colorOverlayAlpha,
                borderRadius: BorderRadius.circular(RadiusType.rd3Xl.radius)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SvgPicture.asset(
                  svgIcon,
                  colorFilter: const ColorFilter.mode(ColorKit.colorWhite,BlendMode.srcIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStylesKit.titleStyle,
                        ),
                        Text(
                          description,
                          style: TextStylesKit.buttonXl.copyWith(color: ColorKit.colorGray),
                        ),
                      ],
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20.0),
            child: GestureDetector(
              onTap: onPressed,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorKit.colorMain,
                  borderRadius: BorderRadius.circular(RadiusType.rdLg.radius)
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: Text(
                      "Перейти в каталог",
                      style: TextStylesKit.buttonXl,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
