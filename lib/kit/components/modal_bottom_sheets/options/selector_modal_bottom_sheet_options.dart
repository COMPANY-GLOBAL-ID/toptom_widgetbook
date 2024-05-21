import 'package:flutter/material.dart';

import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class SelectorModalBottomSheetOptions<T> {
  final String title;
  late RadioListTileWidget<T> Function(BuildContext context, T value,
      T? selectedValue, void Function(T?)? onChanged)? builder;
  late Widget Function(BuildContext context, T item)? builderItem;
  final SelectorController<T> controller;
  final List<T> values;
  final bool showButton;
  final VoidCallback? onPressed;
  final String? buttonText;
  final String? clearButtonText;
  final bool? showCancelButton;
  final ModalBottomSheetOptions? modalBottomSheetOptions;

  SelectorModalBottomSheetOptions({
    required this.title,
    this.builder,
    this.builderItem,
    required this.controller,
    this.clearButtonText,
    this.showButton = false,
    this.showCancelButton = false,
    this.onPressed,
    this.buttonText,
    this.modalBottomSheetOptions,
    this.values = const [],
  }) {
    builder ??= (BuildContext context, T value, T? selectedValue,
            void Function(T?)? onChanged) =>
        RadioListTileWidget<T>(
          value: value,
          groupValue: selectedValue,
          onChanged: onChanged,
          title: value.toString(),
        );
    builderItem ??= (BuildContext context, T value) => Text(value.toString());
  }
}
