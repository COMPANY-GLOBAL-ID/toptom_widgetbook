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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Center(
            child: ButtonWidget(
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
          ),
        ),
      ),
    );
  }
}
