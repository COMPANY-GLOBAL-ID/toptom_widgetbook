import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class ModalBottomSheetOptions<T> {
  final String title;
  final Widget Function(BuildContext context, T? value) builder;
  final ValueNotifier<T> valueNotifier;
  final bool showButton;
  final VoidCallback? onPressed;
  final String?buttonText;
  ModalBottomSheetOptions({
    required this.title,
    required this.builder,
    required this.valueNotifier,
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
      builder: builder
    );
  }

  Future<T?> showSortModal<T>(
      BuildContext context, ModalBottomSheetOptions options) {
    return showModalBottomSheet<T>(
      shape: shape,
      backgroundColor: Colors.white,
      useRootNavigator: true,
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => SortModalBottomSheetWidget(
        valueNotifier: options.valueNotifier,
        title: options.title,
        builder: options.builder,
        showButton: options.showButton,
        onPressed: options.onPressed,
        buttonText: options.buttonText,
      ),
    );
  }
}

class SortModalBottomSheetWidget<T> extends StatelessWidget {
  final ValueNotifier<T?> valueNotifier;
  final String title;
  final Widget Function(BuildContext context, T? value) builder;
  final bool showButton;
  final VoidCallback? onPressed;
  final String? buttonText;
  const SortModalBottomSheetWidget({
    super.key,
    required this.valueNotifier,
    required this.title,
    required this.builder,
    this.showButton = false,
    this.onPressed,
    this.buttonText,
  });

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
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          SizedBox(
            height: ThemeCore.of(context).padding.l,
          ),
          ValueListenableBuilder<T?>(
            valueListenable: valueNotifier,
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
