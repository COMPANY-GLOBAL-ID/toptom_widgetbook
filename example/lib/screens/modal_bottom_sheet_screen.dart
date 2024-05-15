import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/modal_bottom_sheets/modal_bottom_sheet.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';
class ModalBottomSheetScreen extends StatelessWidget {
  const ModalBottomSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String text = context.knobs.string(label: 'modal bottom sheet'  , initialValue: 'show modal bottom sheet');

    void _showModalSheet(BuildContext context) {
      ModalBottomSheet(context).show(
        builder: (BuildContext innerContext) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              borderRadius:  BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                 text,
                  style: ThemeCore.of(context).typography.h6,
                ),
                const SizedBox(height: 10),
              
                const SizedBox(height: 20),
                ButtonWidget(
                  type: ButtonType.primary,
                  size: ButtonSize.l,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Close',
                    style: ThemeCore.of(context)
                        .typography
                        .paragraphMedium
                        .copyWith(color: ThemeCore.of(context).color.scheme.white),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonWidget(
              type: ButtonType.primary,
              size: ButtonSize.l,
              onPressed: () => _showModalSheet(context),
              child: Text(
                text,
                style: ThemeCore.of(context).typography.paragraphMedium.copyWith(
                      color: Colors.black
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
