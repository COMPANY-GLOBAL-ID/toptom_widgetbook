import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/select_input_widget.dart';

class SelectInputScreen extends StatefulWidget {
  final SelectInputController controller = SelectInputController();
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
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Center(
          //         child: SelectInputWidget(
          //           items: _items,
          //           builder: (item) => DropdownMenuItem(
          //             value: item,
          //             child: Text(
          //               item,
          //               style: TextStylesKit.buttonXl
          //                   .copyWith(color: ColorKit.colorTextSecondary),
          //             ),
          //           ),
          //           controller: SelectInputController(null),
          //         ),
          //       ),
        ],
      ),
    ));
  }
}
