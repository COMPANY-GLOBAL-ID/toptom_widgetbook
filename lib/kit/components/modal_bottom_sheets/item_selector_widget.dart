import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ItemSelectorWidget<T> extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final ValueNotifier<T?> valueNotifier;
  const ItemSelectorWidget({
    required this.title,
    required this.onTap,
    required this.valueNotifier,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(ThemeCore.of(context).padding.m),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(ThemeCore.of(context).radius.extraLarge),
          border: Border.all(
            color: ThemeCore.of(context).color.scheme.strokePrimary,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder<T?>(
              valueListenable: valueNotifier,
              builder: (context, value, child) {
                String updatedTitle = title;
                if (value != null) {
                  updatedTitle = value.toString();
                }
                return Text(
                  updatedTitle,
                  style: ThemeCore.of(context)
                      .typography
                      .paragraphSmall
                      .copyWith(
                        color: ThemeCore.of(context).color.scheme.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                );
              },
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: ThemeCore.of(context).color.scheme.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
