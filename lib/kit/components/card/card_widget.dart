import 'package:flutter/cupertino.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class CardWidget extends StatelessWidget {
  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;

  const CardWidget({
    super.key,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          ThemeCore.of(context).radius.extraLarge,
        ),
        color: ThemeCore.of(context).color.scheme.white,
        border: Border.all(
          color: ThemeCore.of(context).color.scheme.overlayPrimary,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: children
        ),
      ),
    );
  }
}
