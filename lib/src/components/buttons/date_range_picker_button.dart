import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Date-range picker button',
  type: Container,
)

Widget dateRangePickerButton(BuildContext context) {
  final firstDate = context.knobs.dateTime(
      label: 'Date range',
      start: DateTime(2020),
      end: DateTime.now(),
      initialValue: DateTime(2020),
  );
  final secondDate = context.knobs.dateTime(
      label: 'Date range',
      start: DateTime(2020),
      end: DateTime.now(),
      initialValue: DateTime.now()
  );
  ValueNotifier<DateTimeRange> rangeNotifier = ValueNotifier(DateTimeRange(start: firstDate, end: secondDate));


  final localeString = context.knobs.string(
      label: 'Locale',
      initialValue: 'en'
  );
  Locale locale = Locale(localeString);


  return Column(
    children: [
      IconButton(
        icon: Icon(Icons.calendar_month),
        onPressed: () async {
          DateTimeRange? range = await showDateRangePicker(
              context: context,
              firstDate: rangeNotifier.value.start,
              lastDate: rangeNotifier.value.end,
              locale: locale
          );

          if(range != null) rangeNotifier.value = range;
        },
      ),
      ValueListenableBuilder(
        valueListenable: rangeNotifier,
        builder: (context, value, child) {
          return Text(
            '${DateFormat().format(value.start)} - ${DateFormat().format(value.end)}'
          );
        }
      )
    ],
  );
}

