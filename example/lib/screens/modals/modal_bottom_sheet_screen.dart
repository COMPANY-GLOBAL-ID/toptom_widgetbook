import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class ModalBottomSheetScreen extends StatelessWidget {
  const ModalBottomSheetScreen({super.key});

  void _showModalSheet(BuildContext context) {

    final String defaultModal = context.knobs.string(
        label: 'default modal bottom sheet',
        initialValue: 'show default modal ');

    final BaseModalBottomSheetOptions options = BaseModalBottomSheetOptions(
      builder: (BuildContext innerContext) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(ThemeCore.of(context).padding.xl),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                defaultModal,
                style: ThemeCore.of(context).typography.h6,
              ),
              const SizedBox(height: 20),
              ButtonWidget(
                type: ButtonType.primary,
                size: ButtonSize.l,
                onPressed: () {
                  Navigator.of(innerContext).pop();
                },
                child: Text(
                  'Close',
                  style: ThemeCore.of(context)
                      .typography
                      .paragraphMedium
                      .copyWith(
                          color: ThemeCore.of(context).color.scheme.white),
                ),
              ),
            ],
          ),
        );
      },
    );

    ModalBottomSheet(context).show(options);
  }

  void showSortModalSheet(
      BuildContext context, SelectorController<String> titleNotifier) {
    final SelectorController<int?> valueNotifier =
        SelectorController<int?>(value: null);

    final SelectorModalBottomSheetOptions options =
        SelectorModalBottomSheetOptions(
      title: "Sort Options",
      builder: (context, value) => ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ValueListenableBuilder<int?>(
            valueListenable: valueNotifier,
            builder: (context, selectedValue, _) {
              return RadioListTileWidget<int>(
                value: index,
                groupValue: selectedValue,
                onChanged: (change) {
                  valueNotifier.value = change;
                  titleNotifier.value = 'Example of sort $index';
                },
                title: 'Example of sort $index',
              );
            },
          );
        },
      ),
      controller: valueNotifier,
      showButton: true,
      buttonText: 'Example',
      clearButtonText: 'clear',
    );

    ModalBottomSheet(context).showSelectorModal(options);
  }

  @override
  Widget build(BuildContext context) {
    final showSortModal = context.knobs
        .string(label: 'sort modal', initialValue: 'show Sort Modal');

    final selectorDefaultTitle = context.knobs.string(
      label: 'item selector',
      initialValue: 'defaulr selector title',
    );

    final SelectorController<String> itemController =
        SelectorController(value: selectorDefaultTitle);

    final List<String> example = [
      'example 1 ',
      'example 2 ',
      'example 3 ',
      'example 4 ',
      'example 5 '
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              ButtonWidget(
                type: ButtonType.primary,
                size: ButtonSize.l,
                onPressed: () => _showModalSheet(context),
                child: Text(
                  'default modal',
                  style: ThemeCore.of(context)
                      .typography
                      .paragraphMedium
                      .copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              ButtonWidget(
                type: ButtonType.primary,
                size: ButtonSize.l,
                onPressed: () => showSortModalSheet(context, itemController),
                child: Text(
                  showSortModal,
                  style: ThemeCore.of(context)
                      .typography
                      .paragraphMedium
                      .copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              ItemSelectorWidget(
                itemSelectorOptions: ItemSelectorOptions(
                  selectorController: itemController,
                  itemList: example,
                  modalTitle: 'Example',
                  clearButtonText: 'clear',
                  label:selectorDefaultTitle ,
                  buttonText: 'Change',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
