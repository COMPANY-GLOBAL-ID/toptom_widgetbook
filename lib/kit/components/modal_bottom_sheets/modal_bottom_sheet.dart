import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class ModalBottomSheet {
  final BuildContext context;

  ModalBottomSheet(
    this.context,
  );

  Future<T?> showDraggable<T>(DraggableModalBottomSheetOptions options) {
    final baseOption = options.baseOptions;
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(baseOption?.borderRadius ??
              ThemeCore.of(context).radius.extraLarge),
        ),
      ),
      backgroundColor: baseOption?.backgroundColor ?? Colors.white,
      useRootNavigator: baseOption?.useRootNavigator ?? true,
      useSafeArea: baseOption?.useSafeArea ?? true,
      isScrollControlled: true,
      context: context,
      builder: (innerContext) {
        return DraggableModalBottomSheetWidget(options: options);
      },
    );
  }

  Future<T?> show<T>(BaseModalBottomSheetOptions options) {
    final baseOption = options.baseOptions;
    return showModalBottomSheet<T>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            baseOption?.borderRadius ?? ThemeCore.of(context).radius.extraLarge,
          ),
        ),
      ),
      backgroundColor: baseOption?.backgroundColor ?? Colors.white,
      useRootNavigator: baseOption?.useRootNavigator ?? true,
      useSafeArea: baseOption?.useSafeArea ?? true,
      isScrollControlled: baseOption?.isScrollControlled ?? true,
      context: context,
      builder: options.builder,
    );
  }

  Future<T?> showSelectorModal<T>(
    SelectorModalBottomSheetOptions<T> selectorModalBottomSheetOptions,
  ) {
    final modalBottomSheetOptions =
        selectorModalBottomSheetOptions.modalBottomSheetOptions;
    return showModalBottomSheet<T>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(modalBottomSheetOptions?.borderRadius ??
              ThemeCore.of(context).radius.extraLarge),
        ),
      ),
      backgroundColor: modalBottomSheetOptions?.backgroundColor,
      useRootNavigator: modalBottomSheetOptions?.useRootNavigator ?? true,
      useSafeArea: modalBottomSheetOptions?.useSafeArea ?? true,
      isScrollControlled: modalBottomSheetOptions?.isScrollControlled ?? true,
      context: context,
      builder: (BuildContext context) => SelectorModalBottomSheetWidget<T>(
        options: selectorModalBottomSheetOptions,
      ),
    );
  }
}
