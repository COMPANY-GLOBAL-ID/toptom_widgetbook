import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class ItemSelectorWidget<T> extends StatefulWidget {
  final SelectorModalBottomSheetOptions<T> options;

  const ItemSelectorWidget({
    required this.options,
    super.key,
  });

  @override
  State<ItemSelectorWidget<T>> createState() => _ItemSelectorWidgetState<T>();
}

class _ItemSelectorWidgetState<T> extends State<ItemSelectorWidget<T>> {
  late ValueNotifier<bool> _isTapped;

  @override
  void initState() {
    _isTapped = ValueNotifier<bool>(false);
    super.initState();
  }

  @override
  void dispose() {
    _isTapped.dispose();
    super.dispose();
  }

  _showModalBottomSheet(BuildContext context) => () async {
        _isTapped.value = true;
        await ModalBottomSheet(context).showSelectorModal(widget.options);
        _isTapped.value = false;
        print(_isTapped.value);
      };
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showModalBottomSheet(context),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(ThemeCore.of(context).radius.extraLarge),
          border: Border.all(
            color: ThemeCore.of(context).color.scheme.textSecondary,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(ThemeCore.of(context).padding.m),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultTextStyle(
                style: ThemeCore.of(context)
                    .typography
                    .paragraphSmall
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                child: ValueListenableBuilder<T?>(
                  valueListenable: widget.options.controller,
                  builder: (context, value, child) {
                    if (value == null) {
                      return Text(
                        widget.options.title,
                        style: ThemeCore.of(context)
                            .typography
                            .paragraphSmall
                            .copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                      );
                    }
                    return widget.options.builderItem!(context, value);
                  },
                ),
              ),
              ValueListenableBuilder<bool>(
                  valueListenable: _isTapped,
                  builder: (context, value, child) {
                    return Icon(
                      value
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                      color: ThemeCore.of(context).color.scheme.textSecondary,
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
