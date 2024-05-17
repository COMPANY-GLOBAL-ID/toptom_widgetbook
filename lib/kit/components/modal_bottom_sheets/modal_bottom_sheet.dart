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
  ModalBottomSheetOptions({
    required this.title,
    required this.builder,
    required this.controller,
    required this.clearButtonText,
    this.showButton = false,
    this.onPressed,
    this.buttonText,
  });
}

class ModalBottomSheet {
  final BuildContext context;
  ShapeBorder? shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)));

  ModalBottomSheet(this.context, {this.shape});

  Future<T?> showDraggable<T>({
    required Widget Function(BuildContext, ScrollController) builder,
    double maxChildSize = 0.95,
  }) {
    return showModalBottomSheet(
        shape: shape,
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
        shape: shape,
        backgroundColor: Colors.white,
        useRootNavigator: true,
        useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: builder);
  }

  Future<T?> showSelectorModal<T>(
      BuildContext context, ModalBottomSheetOptions<T> options) {
    return showModalBottomSheet<T>(
      shape: shape,
      backgroundColor: Colors.white,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => SelectorModalBottomSheetWidget<T>(
        selectorController: options.controller,
        title: options.title,
        builder: options.builder,
        showButton: options.showButton,
        onPressed: options.onPressed,
        buttonText: options.buttonText,
        textButton: options.clearButtonText,
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
  final String? buttonText;
  final String textButton;
  const SelectorModalBottomSheetWidget({
    super.key,
    required this.selectorController,
    required this.title,
    required this.builder,
    required this.textButton,
    this.showButton = false,
    this.onPressed,
    this.buttonText,
  });
  _clear(BuildContext context) => () {
        selectorController.clear();
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
              TextButton(
                onPressed:_clear(context),
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
                      onPressed: onPressed,
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

class ModalBottomSheetScope extends InheritedWidget {
  const ModalBottomSheetScope({required super.child, super.key});
  static show(BuildContext context, ModalBottomSheetOptions options) {}
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
