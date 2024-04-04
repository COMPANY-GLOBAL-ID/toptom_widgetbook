import 'package:flutter/cupertino.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class CardWidget extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final EdgeInsets? padding;
  final MainAxisSize mainAxisSize;
  final MainAxisAlignment mainAxisAlignment;

  const CardWidget({
    super.key,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.min,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ThemeCore.of(context).radius.extraLarge2,
        ),
        color: ThemeCore.of(context).color.scheme.white,
        border: Border.all(
          color: ThemeCore.of(context).color.scheme.overlayPrimary,
        ),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
