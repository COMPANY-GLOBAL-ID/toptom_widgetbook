import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomDatePicker extends StatelessWidget {
  final ValueNotifier<String> updatedDate;
  const CustomDatePicker({super.key, required this.updatedDate});

  _pop(BuildContext context) => () {
        Navigator.of(context).pop();
      };
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: CupertinoDatePicker(
              initialDateTime: DateTime.now(),
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (val) {
                updatedDate.value = DateFormat('yyyy-MM-dd').format(val);
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
