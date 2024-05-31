import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class ItemSelectorOptions<T> {
  final SelectorController<T?> selectorController;
  final String clearButtonText;
  final bool showButton;
  final List<T> itemList;
  final String modalTitle;
  final String buttonText;
  final String label;
  final bool showCancelButton;
  final ModalBottomSheetOptions? modalBottomSheetOptions;

  const ItemSelectorOptions({
    required this.selectorController,
    required this.itemList,
    required this.modalTitle,
    required this.clearButtonText,
    required this.buttonText,
    required this.label,
    this.showButton = true,
    this.showCancelButton = false,
    this.modalBottomSheetOptions,
  });
}
