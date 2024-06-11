import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class MultiSelectInput<T> extends StatefulWidget {
  final List<T> items;
  final String? label;
  final Widget? hint;
  final String? clearText;
  final DropdownMenuItem<T> Function(T, bool hasError) builder;
  final Widget Function(T) builderChip;
  final String? errorText;
  final int? maxItemCount;
  final MultiSelectController<T> controller;
  final String snackBarText;
  const MultiSelectInput(
      {super.key,
      required this.items,
      required this.controller,
      this.hint,
      required this.builder,
      required this.builderChip,
      this.label,
      this.clearText,
      this.errorText,
      this.maxItemCount,
      this.snackBarText = ''});

  @override
  State<MultiSelectInput<T>> createState() => _MultiSelectInputState<T>();
}

class _MultiSelectInputState<T> extends State<MultiSelectInput<T>> {
  late SelectInputController<T> singleController;

  @override
  void initState() {
    singleController = SelectInputController<T>()
      ..addListener(_listenController);
    super.initState();
  }

  @override
  void dispose() {
    singleController
      ..removeListener(_listenController)
      ..dispose();
    super.dispose();
  }

  _listenController() {
    if (singleController.value == null) return;
    if (widget.maxItemCount != null) {
      if (widget.controller.value.length >= widget.maxItemCount!) {
        snackBarBuilder(
            context,
            SnackBarOptions(
              title: widget.snackBarText,
            ));
        singleController.clear();
      }
    }
    widget.controller.add(singleController.value as T);
    singleController.clear();
  }

  _clearAll() => widget.controller.clear();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.errorText != null,
          child: const SizedBox(
            height: 8,
          ),
        ),
        ValueListenableBuilder(
          valueListenable: widget.controller,
          builder: (context, value, child) {
            bool hasLabel =
                widget.label != null && widget.label?.isNotEmpty == true;
            bool hasClearText = widget.clearText != null &&
                widget.clearText?.isNotEmpty == true;
            bool hasLabelOrClearText = hasLabel || hasClearText;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: SelectInputWidget(
                    errorText: widget.errorText,
                    label: Visibility(
                      visible: hasLabelOrClearText,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: hasLabel,
                            child: Text(
                              widget.label ?? '',
                            ),
                          ),
                          Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: hasClearText,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: _clearAll,
                              child: Text(widget.clearText ?? '',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        ThemeCore.of(context).color.scheme.main,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    items: widget.items.where((element) {
                      return !value.contains(element);
                    }).toList(),
                    builder: widget.builder,
                    hint: widget.hint,
                    controller: singleController,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 8,
                  children:
                      widget.controller.value.map(widget.builderChip).toList(),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}

class MultiSelectController<T> extends ValueNotifier<List<T>> {
  MultiSelectController({List<T>? values}) : super(values ?? []);

  void add(T value) {
    this.value.add(value);
    notifyListeners();
  }

  void remove(T value) {
    this.value.remove(value);
    notifyListeners();
  }

  void clear() {
    value.clear();
    notifyListeners();
  }
}
