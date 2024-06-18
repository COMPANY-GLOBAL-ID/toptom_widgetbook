import 'package:example/helper/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:toptom_widgetbook/kit/components/components.dart';

class ItemSelectorScreen extends StatelessWidget {
  const ItemSelectorScreen({super.key});

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
      builder: (
        context,
        value,
        selectedValue,
        onChanged,
      ) =>
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

    return ScreenWidget(
      children: [
        ItemSelectorWidget(
          options: options,
        ),
      ],
    );
  }
}
