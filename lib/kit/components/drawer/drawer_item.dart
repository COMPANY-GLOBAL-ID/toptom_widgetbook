import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class DrawerItem extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;
  final String text;
  final bool selected;
  final bool enabled;

  const DrawerItem({
    super.key,
    this.onPressed,
    this.selected = false,
    required this.icon,
    required this.text,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = ThemeCore.of(context).padding;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: enabled ? onPressed : null,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: enabled
              ? null
              : ThemeCore.of(context).color.scheme.backgroundSecondary,
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Visibility(
                visible: selected,
                child: ColoredBox(
                  color: ThemeCore.of(context).color.scheme.main,
                  child: SizedBox(
                    width: size.s,
                    child: const Column(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(size.l).copyWith(left: size.xl2),
                child: Row(
                  children: [
                    icon,
                    SizedBox(width: size.m),
                    Text(
                      text,
                      style: ThemeCore.of(context)
                          .typography
                          .paragraphMedium
                          .copyWith(
                            color: !enabled
                                ? ThemeCore.of(context)
                                    .color
                                    .scheme
                                    .textSecondary
                                : selected
                                    ? ThemeCore.of(context).color.scheme.main
                                    : null,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
