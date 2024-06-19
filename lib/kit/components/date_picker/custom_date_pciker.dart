import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../toptom_widgetbook.dart';

class CustomDatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime? minDate;
  final DateTime? maxDate;
  final String cancelText;
  final String submitText;

  const CustomDatePicker(
      {required this.initialDate,
      this.minDate,
      this.maxDate,
      this.cancelText = 'Cancel',
      this.submitText = 'Submit'});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  late DateTime? date;

  void _pop() {
    Navigator.of(context).pop(date);
  }

  void _cancel() {
    Navigator.of(context).pop();
  }

  void _change(DateTime date) {
    this.date = date;
  }

  @override
  void initState() {
    super.initState();
    date = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeCore.of(context).color.scheme.background,
        borderRadius:
            BorderRadius.circular(ThemeCore.of(context).radius.extraLarge2),
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CupertinoButton(
                onPressed: _cancel,
                child: Text(
                  widget.cancelText,
                  style: TextStyle(
                      color: ThemeCore.of(context).color.scheme.textPrimary),
                ),
              ),
              CupertinoButton(
                onPressed: _pop,
                child: Text(
                  widget.submitText,
                  style: TextStyle(
                      color: ThemeCore.of(context).color.scheme.textPrimary),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.2,
            child: CupertinoTheme(
              data: CupertinoThemeData(
                textTheme: CupertinoTextThemeData(
                  dateTimePickerTextStyle:
                      ThemeCore.of(context).typography.paragraphBig,
                ),
              ),
              child: CupertinoTheme(
                data: CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: ThemeCore.of(context)
                          .typography
                          .paragraphMedium
                          .copyWith(
                              color: Colors
                                  .black) 
                      ),
                ),
                child: CupertinoDatePicker(
                  minimumDate: widget.minDate,
                  maximumDate: widget.maxDate,
                  initialDateTime: widget.initialDate ?? DateTime.now(),
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: _change,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
