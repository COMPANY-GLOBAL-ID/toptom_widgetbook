import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class ItemSelectorWidget<T> extends StatefulWidget {
  final SelectorModalBottomSheetOptions<T> options;

  const ItemSelectorWidget({
    required this.options,
    super.key,
  });

  @override
  _ItemSelectorWidgetState<T> createState() => _ItemSelectorWidgetState<T>();
}

class _ItemSelectorWidgetState<T> extends State<ItemSelectorWidget<T>> {

  @override
  void initState() {
    super.initState();
  }

  void _showModalBottomSheet(BuildContext context) {
    ModalBottomSheet(context).showSelectorModal(widget.options);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showModalBottomSheet(context),
      child: Container(
        padding: EdgeInsets.all(ThemeCore.of(context).padding.m),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(ThemeCore.of(context).radius.extraLarge),
          border: Border.all(
            color: ThemeCore.of(context).color.scheme.strokePrimary,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ValueListenableBuilder<T?>(
              valueListenable: widget.options.controller,
              builder: (context, value, child) {
                if(value == null) return Text(widget.options.title);
                return widget.options.builderItem!(context, value);
              },
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: ThemeCore.of(context).color.scheme.textSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
