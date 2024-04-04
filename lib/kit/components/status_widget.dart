import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toptom_widgetbook/kit/export.dart';

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
    final radiusKit = ThemeCore.of(context).radius;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ThemeCore.of(context).color.scheme.backgroundSecondary,
        borderRadius: BorderRadius.circular(radiusKit.medium),
      ),
      child: Padding(
        padding: PaddingStatesKit.paddingL.value,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  // color: ColorKit.colorOverlayAlpha,
                  borderRadius: BorderRadius.circular(radiusKit.small2),
                ),
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
                          style: ThemeCore.of(context).typography.h5,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          description,
                          style:
                              ThemeCore.of(context).typography.paragraphMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            const SizedBox(
              width: double.infinity,
              child: ButtonWidget(
                child: Text(
                  "Перейти в каталог",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
