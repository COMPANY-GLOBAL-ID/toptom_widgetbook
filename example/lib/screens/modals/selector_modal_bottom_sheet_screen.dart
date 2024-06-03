import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class SelectorModalBottomSheetScreen extends StatelessWidget {
  const SelectorModalBottomSheetScreen({super.key});

  void showSortModalSheet(BuildContext context,
          SelectorModalBottomSheetOptions<String> options) =>
      ModalBottomSheet(context).showSelectorModal(options);
  @override
  Widget build(BuildContext context) {
    final SelectorController<String> controller = SelectorController<String>();
    final List<String> example = [
      'example 1 ',
      'example 2 ',
      'example 3 ',
      'example 4 ',
      'example 5 '
    ];

    final modalTitle = context.knobs.string(
        label: 'modal bottom sheet title', initialValue: 'Sort options');

    final buttonText =
        context.knobs.string(label: 'button text', initialValue: 'example');

    final clearButton =
        context.knobs.string(label: 'clear button', initialValue: 'clear');

    final showButton =
        context.knobs.boolean(label: 'showButton', initialValue: true);

    final radioListTileWidgetTitle = context.knobs.string(
        label: 'radio list tile widget title ', initialValue: 'example ');

    final options = SelectorModalBottomSheetOptions<String>(
      title: modalTitle,
      values: example,
      builder: (context, value, selectedValue, onChanged , ) =>
          RadioListTileWidget<String>(
        value: value,
        groupValue: selectedValue,
        onChanged: onChanged,
        title: '$radioListTileWidgetTitle $value',
      ),
      controller: controller,
      showButton: showButton,
      buttonText: buttonText,
      clearButtonText: clearButton,
     
    );

    return Scaffold(
      body: Center(
        child: ButtonWidget(
          type: ButtonType.primary,
          size: ButtonSize.l,
          onPressed: () => showSortModalSheet(context, options),
          child: Text(
            'show modal bottom sheet',
            style: ThemeCore.of(context)
                .typography
                .paragraphMedium
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
