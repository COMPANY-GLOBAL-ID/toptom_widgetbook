import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class ModalBottomSheetScreen extends StatelessWidget {
  ModalBottomSheetScreen({super.key});
  final SelectorController<String> controller = SelectorController<String>();
  final List<String> example = [
    'example 1 ',
    'example 2 ',
    'example 3 ',
    'example 4 ',
    'example 5 '
  ];

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

  void showSortModalSheet(BuildContext context, SelectorModalBottomSheetOptions<String> options) => ModalBottomSheet(context).showSelectorModal(options);

  @override
  Widget build(BuildContext context) {
    final showSortModal = context.knobs
        .string(label: 'sort modal', initialValue: 'show Sort Modal');

    final label = context.knobs.string(
      label: 'item selector',
      initialValue: 'defaulr selector title',
    );


    final options = SelectorModalBottomSheetOptions<String>(
      title: "Sort Options",
      values: example,
      builder: (context, value, selectedValue, onChanged) => RadioListTileWidget<String>(
        value: value,
        groupValue: selectedValue,
        onChanged: onChanged,
        title: 'Example of sort $value',
      ),
      controller: controller,
      showButton: true,
      buttonText: 'Example',
      clearButtonText: 'clear',
    );


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
                onPressed: () => showSortModalSheet(context, options),
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
                options: options,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
