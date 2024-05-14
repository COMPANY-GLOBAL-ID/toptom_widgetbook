import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class SelectInputController<T> extends ValueNotifier<T?> {
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
  final DropdownMenuItem<T> Function(T item, bool hasError) builder;

  final SelectInputController<T> controller;
  final String? errorText;

  const SelectInputWidget({
    super.key,
    required this.items,
    required this.builder,
    required this.controller,
    this.errorText,
    this.hint,
    this.label,
  });

  @override
  State<SelectInputWidget<T>> createState() => _SelectInputWidgetState<T>();
}

class _SelectInputWidgetState<T> extends State<SelectInputWidget<T>> {
  void onChange(T? value) {
    if (value == null) return;

    widget.controller.change(value);
  }

  bool get hasErrorText => widget.errorText != null;

  @override
  Widget build(BuildContext context) {
    final ColorSchemeKit colors = ThemeCore.of(context).color.scheme;
    final TextStyle paragraphSmall =
        ThemeCore.of(context).typography.paragraphSmall;
    final double radius = ThemeCore.of(context).radius.extraLarge;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: hasErrorText,
          child: const SizedBox(
            height: 8,
          ),
        ),
        DefaultTextStyle(
          style: paragraphSmall.copyWith(
            color: colors.textSecondary,
            fontWeight: FontWeight.w500,
          ),
          child: Visibility(
            visible: widget.label != null,
            child: Column(
              children: [
                widget.label ?? const Offstage(),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: widget.controller,
          builder: (context, value, child) {
            return DropdownButtonHideUnderline(
              child: DropdownButton2<T>(
                selectedItemBuilder: (context) {
                  return widget.items.map<Widget>((item) {
                    return widget.builder(item, hasErrorText);
                  }).toList();
                },
                isExpanded: true,
                items: widget.items.map((item) {
                  return widget.builder(item, hasErrorText);
                }).toList(),
                value: value,
                onChanged: onChange,
                hint: DefaultTextStyle(
                  style: paragraphSmall.copyWith(
                    color: hasErrorText
                        ? colors.errorPrimary
                        : colors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                  child: widget.hint ?? const Offstage(),
                ),
                buttonStyleData: ButtonStyleData(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5.5,
                  ),
                  elevation: 0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      radius,
                    ),
                    border: Border.all(
                      color: hasErrorText
                          ? colors.errorPrimary
                          : colors.strokePrimary,
                      width: 1,
                    ),
                  ),
                ),
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: hasErrorText
                        ? colors.errorPrimary
                        : colors.textSecondary,
                  ),
                  iconSize: 24,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      radius,
                    ),
                    border: Border.all(
                      color: colors.strokePrimary,
                      width: 1,
                    ),
                  ),
                  offset: const Offset(0, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: WidgetStateProperty.all<double>(6),
                    thumbVisibility: WidgetStateProperty.all<bool>(true),
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
        Visibility(
          visible: hasErrorText,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16,
            ),
            child: Text(
              widget.errorText ?? '',
              style: paragraphSmall.copyWith(
                  color: colors.errorPrimary, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
