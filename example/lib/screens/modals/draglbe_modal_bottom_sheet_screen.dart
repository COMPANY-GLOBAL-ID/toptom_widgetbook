import 'package:example/helper/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class DraggableModalBottomSheetScreen extends StatelessWidget {
  const DraggableModalBottomSheetScreen({super.key});

  VoidCallback _showDraggableSheet(BuildContext innerContext) => () {
    final DraggableModalBottomSheetOptions options =
        DraggableModalBottomSheetOptions(
      childBuilder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
          ButtonWidget(
            child: const Text('back'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
    ModalBottomSheet(innerContext).showDraggable(options);
  };

  @override
  Widget build(BuildContext context) {
    final String text = context.knobs.string(
      label: 'dragble modal bottom sheet',
      initialValue: 'show dragble modal bottom sheet ',
    );
    return ScreenWidget(
      children: [
        ButtonWidget(
          onPressed: _showDraggableSheet(context),
          child: Text(text),
        )
      ],
    );
  }
}
