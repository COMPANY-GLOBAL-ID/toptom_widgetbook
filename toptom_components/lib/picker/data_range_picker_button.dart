
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateRangePickerButton extends StatefulWidget {
  final DateTime initialEndDate;
  final DateTime initialStartDate;
  final Locale? locale;
  final Function(DateTimeRange) onDateRangeSelected;

  const DateRangePickerButton({
    Key? key,
    required this.initialEndDate,
    required this.initialStartDate,
    required this.onDateRangeSelected,
    this.locale,
  }) : super(key: key);

  @override
  State<DateRangePickerButton> createState() => _DateRangePickerButtonState();
}

class _DateRangePickerButtonState extends State<DateRangePickerButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.calendar_month),
      onPressed: () async {
        DateTimeRange? range = await showDateRangePicker(
          context: context,
          firstDate: widget.initialStartDate,
          lastDate: widget.initialEndDate,
          locale: widget.locale
        );
        if (range != null) widget.onDateRangeSelected(range);
      },
    );
  }
}
