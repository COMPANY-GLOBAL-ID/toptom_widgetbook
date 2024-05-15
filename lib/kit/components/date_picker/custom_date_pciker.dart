import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomDatePicker extends StatelessWidget {
  final ValueNotifier<String> updatedBirthday;
  const CustomDatePicker({super.key, required this.updatedBirthday});

  _pop(BuildContext context) => () {
        Navigator.of(context).pop();
      };
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      height: 300,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (val) {
                updatedBirthday.value = DateFormat('yyyy-MM-dd').format(val);
              },
            ),
          ),
          CupertinoButton(
            onPressed: _pop(context),
            child: const Text('OK'),
          )
        ],
      ),
    );
  }
}
