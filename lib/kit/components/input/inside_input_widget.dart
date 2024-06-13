import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class InsideInputWidget<T> extends StatefulWidget {
  final List<T> items;
  final Widget? hint;
  final Widget? label;
  final DropdownMenuItem<T> Function(T item, bool hasError) builder;
  final MultiSelectController<T> controller;
  final String? errorText;
  final int? maxItemCount;

  const InsideInputWidget({
    super.key,
    required this.items,
    required this.builder,
    required this.controller,
    this.errorText,
    this.hint,
    this.label,
    this.maxItemCount,
  });

  @override
  State<InsideInputWidget<T>> createState() => _InsideInputWidgetState<T>();
}

class _InsideInputWidgetState<T> extends State<InsideInputWidget<T>> {
  bool get hasErrorText => widget.errorText != null;

  late SelectInputController<T> singleController;

  @override
  void initState() {
    singleController = SelectInputController<T>()
      ..addListener(_listenController);
    super.initState();
  }

  @override
  void dispose() {
    singleController
      ..removeListener(_listenController)
      ..dispose();
    super.dispose();
  }

  _listenController() {
    _add(singleController.value);

    singleController.clear();
  }

  _add(T? value) {
    if (value == null) return;
    int? maxItems = widget.maxItemCount;

    if (maxItems == null) return widget.controller.add(value);

    if (maxItems > widget.controller.value.length) {
      return widget.controller.add(value);
    }
  }

  void onChange(T? value) {
    if (value == null) return;
    singleController.change(value);
  }

  @override
  Widget build(BuildContext context) {
    final ColorSchemeKit colors = ThemeCore.of(context).color.scheme;
    final double radius = ThemeCore.of(context).radius.extraLarge;
    final size = ThemeCore.of(context).padding;
    final TextStyle paragraphSmall =
        ThemeCore.of(context).typography.paragraphSmall;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: hasErrorText,
          child: SizedBox(
            height: size.ms,
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
                SizedBox(height: size.s),
              ],
            ),
          ),
        ),
        ValueListenableBuilder<List<T>>(
          valueListenable: widget.controller,
          builder: (context, selectedValues, child) {
            return DropdownSearch<T>.multiSelection(
              items: widget.items,
              selectedItems: selectedValues,
              dropdownBuilder: (context, selectedItem) {
                return Wrap(
                  children: selectedItem
                      .map((item) => Chip(
                            label: Text(item
                                .toString()), 
                          ))
                      .toList(),
                );
              },
              onChanged: (newSelection) {
                widget.controller.value = newSelection;
              },
              popupProps: PopupPropsMultiSelection.menu(
                constraints: BoxConstraints(
                  maxHeight: size.xl6 * 5,
                ),
                scrollbarProps: ScrollbarProps(
                    radius: Radius.circular(
                  ThemeCore.of(context).radius.extraLarge4,
                )),
                showSelectedItems: false,
              ),
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      radius,
                    ),
                    borderSide: BorderSide(
                      color: colors.strokePrimary,
                      width: 2,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        Visibility(
          visible: hasErrorText,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.ms,
              horizontal: size.l,
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
