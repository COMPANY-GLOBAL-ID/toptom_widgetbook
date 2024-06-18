import 'package:example/helper/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class DatePickerScreen extends StatelessWidget {
  const DatePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<DateTime?> updatedBirthday =
        ValueNotifier<DateTime?>(DateTime.now());

    VoidCallback showDatePickerModal(BuildContext context) => () async {
      final BaseModalBottomSheetOptions options = BaseModalBottomSheetOptions(
        builder: (BuildContext innerContext) {
          return CustomDatePicker(initialDate: updatedBirthday.value,);
        },
      );
      final result = await ModalBottomSheet(context).show<DateTime?>(options);
      updatedBirthday.value = result;
    };

    return ScreenWidget(
      children: [
        ValueListenableBuilder<DateTime?>(
          valueListenable: updatedBirthday,
          builder: (context, value, child) {
            return Text(
              'Selected Date: $value',
              style: ThemeCore.of(context).typography.paragraphBig,
            );
          },
        ),
        const SizedBox(height: 20),
        ButtonWidget(
          onPressed: showDatePickerModal(context),
          child: Text('show'),
        ),
      ],
    );
  }
}
