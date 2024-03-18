import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class SelectInputController<T> extends ValueNotifier {
  SelectInputController(super.value);

  void change(T value) {
    this.value = value;
  }
}

class SelectInputWidget<T> extends StatefulWidget {
  final List<T> items;
  final DropdownMenuItem<T> Function(T) builder;
  final SelectInputController<T> controller;

  const SelectInputWidget({
    Key? key,
    required this.items,
    required this.builder,
    required this.controller,
  }) : super(key: key);

  @override
  State<SelectInputWidget<T>> createState() => _SelectInputWidgetState<T>();
}

class _SelectInputWidgetState<T> extends State<SelectInputWidget<T>> {
  IconData _iconForSelect = Icons.arrow_upward;

  void onChange(T? value) {
    if (value == null) return;

    widget.controller.change(value);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isExpanded: true,
        hint: Row(
          children: [
            Icon(
              _iconForSelect,
              size: 21,
              color: ColorKit.colorTextPrimary,
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                'Select Item',
                style: TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: widget.items.map<DropdownMenuItem<T>>(widget.builder).toList(),
        value: widget.controller.value,
        onChanged: onChange,
        buttonStyleData: ButtonStyleData(
          height: 50,
          width: 160,
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: ColorKit.colorTextPrimary,
            ),
            color: ColorKit.colorWhite
          ),
          elevation: 2,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: ColorKit.colorTextPrimary,
          iconDisabledColor: ColorKit.colorOverlaySecondary,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          offset: const Offset(0, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}
