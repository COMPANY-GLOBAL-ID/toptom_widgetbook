import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toptom_widgetbook/kit/export.dart';

import 'buttons/button.dart';

class StatusWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;
  final VoidCallback? onPressed;
  const StatusWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: ColorKit.colorBackgroundSecondary,
          borderRadius: BorderRadius.circular(RadiusType.rd4Xl.radius)),
      child: Padding(
        padding: PaddingStatesKit.paddingL.value,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: ColorKit.colorOverlayAlpha,
                    borderRadius:
                        BorderRadius.circular(RadiusType.rd3Xl.radius)),
                child:
                    Padding(padding: const EdgeInsets.all(20.0), child: icon),
              ),
            ),
            RichText(
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
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          description,
                          style: TextStylesKit.buttonXl
                              .copyWith(color: ColorKit.colorGray),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              child: ButtonA(
                onPressed: onPressed,
                child: Text(
                  "Перейти в каталог",
                  style: TextStylesKit.buttonXl,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
