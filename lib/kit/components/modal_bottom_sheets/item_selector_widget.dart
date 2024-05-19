import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ItemSelectorWidget<T> extends StatefulWidget {
  final ItemSelectorOptions<T> itemSelectorOptions;

  const ItemSelectorWidget({
    required this.itemSelectorOptions,
    super.key,
  });

  @override
  _ItemSelectorWidgetState<T> createState() => _ItemSelectorWidgetState<T>();
}

class _ItemSelectorWidgetState<T> extends State<ItemSelectorWidget<T>> {
  late ValueNotifier<String> updatedTitleNotifier;

  @override
  void initState() {
    super.initState();
    updatedTitleNotifier = ValueNotifier(
      widget.itemSelectorOptions.selectorController.value?.toString() ??
          widget.itemSelectorOptions.label,
    );

    widget.itemSelectorOptions.selectorController.addListener(
      () {
        final selectedValue =
            widget.itemSelectorOptions.selectorController.value;
        if (selectedValue != null) {
          updatedTitleNotifier.value = selectedValue.toString();
        } else {
          updatedTitleNotifier.value = widget.itemSelectorOptions.label;
        }
      },
    );
  }

  _onItemSelected(T? value) {
    if (value != null) {
      widget.itemSelectorOptions.selectorController.value = value;
      updatedTitleNotifier.value = value.toString();
    }
  }

  void _clearSelection() {
    widget.itemSelectorOptions.selectorController.clear();
    updatedTitleNotifier.value = widget.itemSelectorOptions.label;
  }

  void _showModalBottomSheet(BuildContext context) {
    final modalBottomSheetOptions = SelectorModalBottomSheetOptions<T>(
      title: widget.itemSelectorOptions.modalTitle,
      builder: (context, value) => ListView.builder(
        itemCount: widget.itemSelectorOptions.itemList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ValueListenableBuilder<T?>(
            valueListenable: widget.itemSelectorOptions.selectorController,
            builder: (context, selectedValue, _) {
              return RadioListTileWidget<T>(
                value: widget.itemSelectorOptions.itemList[index],
                groupValue: selectedValue,
                onChanged: (change) {
                  widget.itemSelectorOptions.selectorController.value = change;
                },
                title: widget.itemSelectorOptions.itemList[index].toString(),
              );
            },
          );
        },
      ),
      controller: widget.itemSelectorOptions.selectorController,
      showButton: widget.itemSelectorOptions.showButton,
      buttonText: widget.itemSelectorOptions.buttonText,
      onPressed: () =>
          _onItemSelected(widget.itemSelectorOptions.selectorController.value),
      clearButtonText: widget.itemSelectorOptions.clearButtonText,
      clearFunction: _clearSelection,
    );

    ModalBottomSheet(context).showSelectorModal(modalBottomSheetOptions);
  }

  @override
  void dispose() {
    updatedTitleNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showModalBottomSheet(context),
      child: Container(
        padding: EdgeInsets.all(ThemeCore.of(context).padding.m),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(ThemeCore.of(context).radius.extraLarge),
          border: Border.all(
            color: ThemeCore.of(context).color.scheme.strokePrimary,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder<String>(
              valueListenable: updatedTitleNotifier,
              builder: (context, updatedTitle, child) {
                return Text(
                  updatedTitle,
                  style: ThemeCore.of(context)
                      .typography
                      .paragraphSmall
                      .copyWith(
                        color: ThemeCore.of(context).color.scheme.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                );
              },
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: ThemeCore.of(context).color.scheme.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
