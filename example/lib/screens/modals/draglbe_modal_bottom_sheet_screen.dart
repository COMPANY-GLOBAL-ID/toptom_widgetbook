import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class DraggableModalBottomSheetScreen extends StatelessWidget {
  const DraggableModalBottomSheetScreen({super.key});

  void _showDraggableSheet(BuildContext context) {
    ModalBottomSheet(context).showDraggable(
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  },
                ),
              ),
              ButtonWidget(
                child: const Text('back'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          ),
        );
      },
      maxChildSize: 0.35,
    );
  }

  @override
  Widget build(BuildContext context) {
    final String text = context.knobs.string(
        label: 'dragble modal bottom sheet',
        initialValue: 'show dragble modal bottom sheet ');
    return Scaffold(
      body: Center(
        child: ButtonWidget(
          onPressed: () => _showDraggableSheet(context),
          child: Text(text),
        ),
      ),
    );
  }
}
