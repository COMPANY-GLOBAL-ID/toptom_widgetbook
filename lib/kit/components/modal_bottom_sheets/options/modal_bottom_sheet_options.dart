import 'package:flutter/material.dart';

class ModalBottomSheetOptions<T> {
  final Color? backgroundColor;
  final bool? useRootNavigator;
  final bool? useSafeArea;
  final bool? isScrollControlled;
  final double? borderRadius;

  ModalBottomSheetOptions({
    this.backgroundColor = Colors.white,
    this.isScrollControlled = true,
    this.useRootNavigator = true,
    this.useSafeArea = true,
    this.borderRadius,
  });
}
