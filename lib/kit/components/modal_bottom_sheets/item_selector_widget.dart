import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ItemSelectorOptions<T> {
  final SelectorController<T?> selectorController;
  final String clearButtonText;
  final bool showButton;
  final VoidCallback? onPressed;
  final List<T> itemList;
  final String modalTitle;
  final String? buttonText;
  const ItemSelectorOptions({
    required this.selectorController,
    required this.itemList,
    required this.modalTitle,
    required this.clearButtonText,
    this.onPressed,
    this.buttonText,
    this.showButton = false,
  });
}

class ItemSelectorWidget<T> extends StatelessWidget {
  final ItemSelectorOptions<T> itemSelectorOptions;
  const ItemSelectorWidget({
    required this.itemSelectorOptions,
    super.key,
  });

  _showModalBottomSheet(
          BuildContext context, ItemSelectorOptions<T> itemSelectorOptions) =>
      () {
        final ModalBottomSheetOptions<T> modalBottomSheetOptions =
            ModalBottomSheetOptions(
          title: itemSelectorOptions.modalTitle,
          builder: (context, value) => ListView.builder(
            itemCount: itemSelectorOptions.itemList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ValueListenableBuilder<T?>(
                valueListenable: itemSelectorOptions.selectorController,
                builder: (context, selectedValue, _) {
                  return RadioListTileWidget<T>(
                    value: itemSelectorOptions.itemList[index],
                    groupValue: selectedValue,
                    onChanged: (change) {
                      itemSelectorOptions.selectorController.value = change;
                    },
                    title: itemSelectorOptions.itemList[index].toString(),
                  );
                },
              );
            },
          ),
          controller: itemSelectorOptions.selectorController,
          showButton: itemSelectorOptions.showButton,
          buttonText: itemSelectorOptions.buttonText,
          onPressed: itemSelectorOptions.onPressed, clearButtonText: itemSelectorOptions.clearButtonText,
        );

        ModalBottomSheet(context)
            .showSelectorModal(context, modalBottomSheetOptions);
      };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showModalBottomSheet(context, itemSelectorOptions),
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
            ValueListenableBuilder<T?>(
              valueListenable: itemSelectorOptions.selectorController,
              builder: (context, value, child) {
                String updatedTitle =
                    itemSelectorOptions.selectorController.value.toString();
                if (value != null) {
                  updatedTitle = value.toString();
                }
                return  Text(
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
