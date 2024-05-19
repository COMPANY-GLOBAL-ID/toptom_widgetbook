import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class SelectorModalBottomSheetOptions<T> {
  final String title;
  final Widget Function(BuildContext context, T? value) builder;
  final SelectorController<T?> controller;
  final bool showButton;
  final VoidCallback? onPressed;
  final String? buttonText;
  final String? clearButtonText;
  final bool? showCancelButton;
  final VoidCallback? clearFunction;
  final ModalBottomSheetOptions? modalBottomSheetOptions;
  
  SelectorModalBottomSheetOptions({
    required this.title,
    required this.builder,
    required this.controller,
    this.clearButtonText,
    this.showButton = false,
    this.showCancelButton = false,
    this.onPressed,
    this.buttonText,
    this.clearFunction,
    this.modalBottomSheetOptions,
  });
}
