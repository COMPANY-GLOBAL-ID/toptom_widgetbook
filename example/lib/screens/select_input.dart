import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/select_input_widget.dart';
import 'package:toptom_widgetbook/kit/constants_kit/colors/color_kit.dart';
import 'package:toptom_widgetbook/kit/constants_kit/text_styles_kit.dart';

class SelectInputScreen extends StatefulWidget {
  final SelectInputController controller = SelectInputController("item 1");
  SelectInputScreen({
    super.key,
  });

  @override
  State<SelectInputScreen> createState() => _SelectInputScreenState();

}

class _SelectInputScreenState extends State<SelectInputScreen> {
  List _items = ['Item 1', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectInputWidget(
          items: _items,
          builder:(item) =>
              DropdownMenuItem(
                value: item,
                child: Text(item,style: TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextSecondary),),
              ),
          controller: SelectInputController(null),
        ),
      ),
    );
  }
}
