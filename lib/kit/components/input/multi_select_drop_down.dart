import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class MultiSelectDropdown<T> extends StatefulWidget {
  final List<T> items;
  final String label;
  final Widget? hint;
  final String? clearText;
  final DropdownMenuItem<T> Function(T, bool hasError) builder;
  final Widget Function(T) builderChip;
  final String? errorText;
  final int? maxItemCount;
  final MultiSelectController<T> controller;
  const MultiSelectDropdown({
    super.key,
    required this.items,
    required this.label,
    required this.controller,
    required this.builder,
    required this.builderChip,
    this.hint,
    this.clearText,
    this.errorText,
    this.maxItemCount,
  });

  @override
  State<MultiSelectDropdown<T>> createState() =>
      _MultiSelectDropdownState<T>();
}

class _MultiSelectDropdownState<T>
    extends State<MultiSelectDropdown<T>> {
  late SelectInputController<T> singleController;
  @override
  void initState() {
    singleController = SelectInputController()..addListener(_listnerController);
    super.initState();
  }

  _listnerController() {
    _add(singleController.value);

    singleController.clear();
  }

  _add(T? value) {
    if (value == null) return;
    int? maxtItems = widget.maxItemCount;
    if (maxtItems == null) return widget.controller.add(value);
    if (maxtItems > widget.controller.value.length) {
      return widget.controller.add(value);
    }
  }

  _clearAll() => widget.controller.clear();

  @override
  void dispose() {
    singleController
      ..removeListener(_listnerController)
      ..dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = ThemeCore.of(context).color;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.errorText != null,
          child: SizedBox(
            height: ThemeCore.of(context).padding.ms,
          ),
        ),
        ValueListenableBuilder(
          valueListenable:widget.controller ,
          builder: (context, value , child) {
            return Container(
              padding: EdgeInsets.symmetric(
                  horizontal: ThemeCore.of(context).padding.m,
                  vertical: ThemeCore.of(context).padding.l),
              decoration: BoxDecoration(
                color: color.scheme.white,
                borderRadius:
                    BorderRadius.circular(ThemeCore.of(context).radius.extraLarge),
                border: Border.all(
                  color: ThemeCore.of(context).color.scheme.strokePrimary,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.label,
                    style: ThemeCore.of(context).typography.paragraphSmall.copyWith(
                          fontWeight: FontWeight.w500,
                          height: 20 / 14,
                        ),
                  ),
                ],
              ),
            );
          }
        ),
      ],
    );
  }
}
