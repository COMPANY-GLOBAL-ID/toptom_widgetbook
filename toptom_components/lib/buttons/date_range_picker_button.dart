import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Date-range picker button',
  type: Container,
)

Widget dateRangePickerButton(BuildContext context) {
  final icon = context.knobs.string(
      label: 'icon',
      initialValue: 'icon'
  );
  final firstDate = context.knobs.dateTime(
      label: 'icon',
      start: DateTime(2024), end: DateTime.now(), initialValue: DateTime.now()
  );

  final localeString = context.knobs.string(
      label: 'Locale',
      initialValue: 'en'
  );
  Locale locale = Locale(localeString);

  Function(DateTimeRange) onDateRangeSelected;

  return IconButton(
    icon: SvgPicture.asset(icon),
    onPressed: () async {
      DateTimeRange? range = await showDateRangePicker(
          context: context,
          firstDate: firstDate ?? DateTime(2024),
          lastDate: DateTime.now(),
          locale: locale
      );
    },
  );
}

