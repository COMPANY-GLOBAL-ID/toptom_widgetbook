import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class DatePickerScreen extends StatelessWidget {
  const DatePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String text = context.knobs.string(label: 'show date picker'  , initialValue: 'date picker');
    final ValueNotifier<String> updatedBirthday = ValueNotifier<String>(DateFormat('yyyy-MM-dd').format(DateTime.now()));

    void _showDatePickerModal(BuildContext context) {
      ModalBottomSheet(context).show( 
        builder: (BuildContext innerContext) {
          return CustomDatePicker(updatedDate: updatedBirthday);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ValueListenableBuilder<String>(
              valueListenable: updatedBirthday,
              builder: (context, value, child) {
                return Text('Selected Date: $value',);
              },
            ),
            const SizedBox(height: 20),
            ButtonWidget(
              onPressed: () => _showDatePickerModal(context),
              child:  Text(text),
            ),
          ],
        ),
      ),
    );
  }
}
