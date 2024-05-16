import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class RadioListTileWidget<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final void Function(T?)? onChanged;
  final String title;
  final Color ? focusColor ;
  const RadioListTileWidget(
      {super.key,
      required this.onChanged,
      required this.title,
      required this.value,
      this.groupValue , 
      this.focusColor,
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<T?>(
          value: value,
          groupValue: groupValue,
          visualDensity: const VisualDensity(horizontal: -4.0),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          focusColor: focusColor,
          onChanged: onChanged,
        ),
        SizedBox(width: ThemeCore.of(context).padding.ms),
        Text(
          title,
          style: ThemeCore.of(context).typography.paragraphSmall.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
