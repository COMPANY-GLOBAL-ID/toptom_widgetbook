import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/modal_bottom_sheets/draggable_scrollable_sheet.dart';

class ModalBottomSheet {
  final BuildContext context;
  ShapeBorder? shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)));

  ModalBottomSheet(this.context, {this.shape});

  Future<T?> showDraggable<T>({
    required Widget Function(BuildContext, ScrollController) builder,
    double maxChildSize = 0.95,
  }) {
    return showModalBottomSheet(
        shape: shape,
        backgroundColor: Colors.transparent.withOpacity(0.06),
        useRootNavigator: true,
        useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: (innerContext) {
          return MyDraggableScrollableSheet(
              maxChildSize: maxChildSize, builder: builder);
        });
  }

  Future<T?> show<T>(
      {required Widget Function(BuildContext) builder, bool isClose = true}) {
    return showModalBottomSheet<T>(
        shape: shape,
        backgroundColor: Colors.transparent.withOpacity(0.06),
        useRootNavigator: true,
        useSafeArea: true,
        isScrollControlled: true,
        enableDrag: isClose,
        isDismissible: isClose,
        context: context,
        builder: builder);
  }
}
