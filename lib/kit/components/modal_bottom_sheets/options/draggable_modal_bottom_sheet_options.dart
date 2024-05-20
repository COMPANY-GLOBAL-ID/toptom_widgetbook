import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class DraggableModalBottomSheetOptions {
  final ModalBottomSheetOptions? baseOptions;
  final double initialChildSize;
  final double maxChildSize;
  final WidgetBuilder childBuilder;
  final bool expand;
  final bool snap;
  final double minChildSize;
  DraggableModalBottomSheetOptions({
    required this.childBuilder,
    this.baseOptions,
    this.initialChildSize = 0.5,
    this.maxChildSize = 0.95,
    this.expand = false,
    this.snap = true,
    this.minChildSize = 0,
  });
}
