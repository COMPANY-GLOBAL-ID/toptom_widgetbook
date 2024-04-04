import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toptom_widgetbook/kit/export.dart';

enum StatusPageSize {
  small,
  medium,
  large;

  double padding(BuildContext context) {
    final radiusKit = ThemeCore.of(context).radius;
    switch (this) {
      case StatusPageSize.small:
        return radiusKit.extraLarge7;
      case StatusPageSize.medium:
        return radiusKit.extraLarge8;
      case StatusPageSize.large:
        return radiusKit.extraLarge9;
    }
  }

  ButtonSize buttonSize(BuildContext context) {
    switch (this) {
      case StatusPageSize.small:
        return ButtonSize.m;
      case StatusPageSize.medium:
        return ButtonSize.l;
      case StatusPageSize.large:
        return ButtonSize.xl;
    }
  }
}

class StatusWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String description;
  final VoidCallback? onPressed;
  final Widget child;
  final TextStyle? descriptionStyle;
  final TextStyle? titleStyle;
  final StatusPageSize size;

  const StatusWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onPressed,
    required this.child,
    this.descriptionStyle,
    this.titleStyle,
    this.size = StatusPageSize.small,
  });

  @override
  Widget build(BuildContext context) {
    final radiusKit = ThemeCore.of(context).radius;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ThemeCore.of(context).color.scheme.backgroundAlpha,
        borderRadius: BorderRadius.circular(radiusKit.extraLarge4),
      ),
      child: Padding(
        padding: EdgeInsets.all(size.padding(context)),
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: ThemeCore.of(context).color.scheme.overlayAlpha,
                borderRadius: BorderRadius.circular(radiusKit.extraLarge4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: icon,
              ),
            ),
            SizedBox(height: size.padding(context)),
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
                          style: ThemeCore.of(context)
                              .typography
                              .h5
                              .merge(titleStyle),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          description,
                          style: ThemeCore.of(context)
                              .typography
                              .paragraphMedium
                              .copyWith(
                                fontWeight: FontWeight.w500,
                              )
                              .merge(descriptionStyle),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ButtonWidget(
                onPressed: onPressed,
                size: size.buttonSize(context),
                child: child,
              ),
            )
          ],
        ),
      ),
    );
  }
}
