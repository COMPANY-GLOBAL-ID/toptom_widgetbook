import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class SelectInputController<T> extends ValueNotifier {
  SelectInputController({T? value}) : super(value);

  void change(T value) {
    this.value = value;
  }

  void clear() {
    value = null;
  }
}

class SelectInputWidget<T> extends StatefulWidget {
  final List<T> items;
  final Widget? hint;
  final Widget? label;
  final DropdownMenuItem<T> Function(T) builder;
  final SelectInputController<T> controller;

  const SelectInputWidget({
    Key? key,
    required this.items,
    required this.builder,
    required this.controller,
    this.hint,
    this.label,
  }) : super(key: key);

  @override
  State<SelectInputWidget<T>> createState() => _SelectInputWidgetState<T>();
}

class _SelectInputWidgetState<T> extends State<SelectInputWidget<T>> {
  void onChange(T? value) {
    if (value == null) return;

    widget.controller.change(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle(
          style: ThemeCore.of(context)
              .typography
              .paragraphSmall
              .copyWith(
            color: ThemeCore.of(context)
                .color
                .scheme
                .textSecondary,
            fontWeight: FontWeight.w500,
          ),
          child: Visibility(
            visible: widget.label != null,
            child: Column(
              children: [
                widget.label ?? const Offstage(),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: widget.controller,
          builder: (context, value, child) {
            return DropdownButtonHideUnderline(
              child: DropdownButton2<T>(
                isExpanded: true,
                items: widget.items.map<DropdownMenuItem<T>>(widget.builder).toList(),
                value: value,
                onChanged: onChange,
                hint: DefaultTextStyle(
                  style: ThemeCore.of(context).typography.paragraphSmall.copyWith(
                        color: ThemeCore.of(context).color.scheme.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                  child: widget.hint ?? const Offstage(),
                ),
                buttonStyleData: ButtonStyleData(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  elevation: 0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      ThemeCore.of(context).radius.extraLarge,
                    ),
                    border: Border.all(
                      color: ThemeCore.of(context).color.scheme.strokePrimary,
                      width: 1,
                    ),
                  ),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      ThemeCore.of(context).radius.extraLarge,
                    ),
                    border: Border.all(
                      color: ThemeCore.of(context).color.scheme.strokePrimary,
                      width: 1,
                    ),
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
          },
        ),
      ],
    );
  }
}
