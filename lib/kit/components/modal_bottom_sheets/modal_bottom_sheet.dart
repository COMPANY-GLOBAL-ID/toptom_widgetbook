import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class ModalBottomSheetOptions<T> {
  final String title;
  final Widget Function(BuildContext context, T? value) builder;
  final SelectorController<T?> controller;
  final bool showButton;
  final VoidCallback? onPressed;
  final String? buttonText;
  final String clearButtonText;
  final bool showCancelButton;
  final VoidCallback? clearFunction;
  ModalBottomSheetOptions({
    required this.title,
    required this.builder,
    required this.controller,
    required this.clearButtonText,
    this.showButton = false,
    this.showCancelButton = false,
    this.onPressed,
    this.buttonText,
    this.clearFunction,
  });
}

class ModalBottomSheet {
  final BuildContext context;

  ModalBottomSheet(
    this.context,
  );

  Future<T?> showDraggable<T>({
    required Widget Function(BuildContext, ScrollController) builder,
    double maxChildSize = 0.95,
  }) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(ThemeCore.of(context).radius.extraLarge),
          ),
        ),
        backgroundColor: Colors.transparent.withOpacity(0.06),
        useRootNavigator: true,
        useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: (innerContext) {
          return MyDraggableScrollableSheet(
              maxChildSize: maxChildSize, builder: builder);
        });
  }

  Future<T?> show<T>(
      {required Widget Function(BuildContext) builder, bool isClose = true}) {
    return showModalBottomSheet<T>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(ThemeCore.of(context).radius.extraLarge),
        ),
      ),
      backgroundColor: Colors.white,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: builder,
    );
  }

  Future<T?> showSelectorModal<T>(ModalBottomSheetOptions<T> options) {
    return showModalBottomSheet<T>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(ThemeCore.of(context).radius.extraLarge),
        ),
      ),
      backgroundColor: Colors.white,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => SelectorModalBottomSheetWidget<T>(
        selectorController: options.controller,
        title: options.title,
        builder: options.builder,
        showButton: options.showButton,
        onPressed: options.onPressed,
        buttonText: options.buttonText,
        textButton: options.clearButtonText,
        showCancelButton: options.showCancelButton,
        clearFunction: options.clearFunction
        ,
      ),
    );
  }
}

class SelectorModalBottomSheetWidget<T> extends StatelessWidget {
  final SelectorController<T?> selectorController;
  final String title;
  final Widget Function(BuildContext context, T? value) builder;
  final bool showButton;
  final VoidCallback? onPressed;
  final VoidCallback? clearFunction;
  final String? buttonText;
  final String textButton;
  final bool showCancelButton;
  const SelectorModalBottomSheetWidget({
    super.key,
    required this.selectorController,
    required this.title,
    required this.builder,
    required this.textButton,
    this.showButton = false,
    this.showCancelButton = false,
    this.onPressed,
    this.buttonText,
    this.clearFunction,
  });


  _cancel(BuildContext context) => () {
        Navigator.of(context).pop();
      };

  _back(BuildContext context) => () {
        if (onPressed != null) {
          onPressed!();
        }
        Navigator.of(context).pop();
      };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ThemeCore.of(context).padding.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: ThemeCore.of(context).typography.paragraphMedium,
              ),
              showCancelButton == true
                  ? IconButton(
                      onPressed: _cancel(context),
                      icon: const Icon(Icons.close),
                    )
                  : TextButton(
                      onPressed: clearFunction,
                      child: Text(textButton),
                    ),
            ],
          ),
          SizedBox(
            height: ThemeCore.of(context).padding.l,
          ),
          ValueListenableBuilder<T?>(
            valueListenable: selectorController,
            builder: (context, value, child) {
              return builder(context, value);
            },
          ),
          SizedBox(
            height: ThemeCore.of(context).padding.l,
          ),
          showButton == true && buttonText != null
              ? SafeArea(
                  child: SizedBox(
                    width: double.infinity,
                    child: ButtonWidget(
                      onPressed: _back(context),
                      child: Text(
                        buttonText!,
                        style: ThemeCore.of(context)
                            .typography
                            .paragraphSmall
                            .copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
