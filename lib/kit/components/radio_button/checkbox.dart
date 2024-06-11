import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class CheckboxWidget extends StatelessWidget {
  final bool? value;
  final Function(bool? value) onChanged;

  const CheckboxWidget({
    super.key,
    this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: value,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onChanged: onChanged,
      checkColor: ThemeCore.of(context).color.scheme.white,
      fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return ThemeCore.of(context).color.scheme.main;
        }
        return ThemeCore.of(context).color.scheme.white;
      }),
    );
  }
}

class CheckboxListTileWidget extends StatelessWidget {
  final bool? value;
  final Widget title;
  final Function(bool? value) onChanged;

  const CheckboxListTileWidget({
    super.key,
    this.value,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      horizontalTitleGap: 0,
      style: ListTileStyle.list,
      child: CheckboxListTile(
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        title: DefaultTextStyle(
            style: ThemeCore.of(context).typography.paragraphSmall.copyWith(
                color: ThemeCore.of(context).color.scheme.textPrimary),
            child: title),
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        checkColor: ThemeCore.of(context).color.scheme.white,
        fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return ThemeCore.of(context).color.scheme.main;
          }
          return ThemeCore.of(context).color.scheme.white;
        }),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
