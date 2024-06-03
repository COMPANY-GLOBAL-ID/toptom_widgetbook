import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class BaseModalBottomSheetOptions {
  final ModalBottomSheetOptions? baseOptions;
  final Widget Function(BuildContext context) builder;

  BaseModalBottomSheetOptions({required this.builder, this.baseOptions});
}
