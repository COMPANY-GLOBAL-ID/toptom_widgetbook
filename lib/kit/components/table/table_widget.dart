import 'package:flutter/cupertino.dart';
import 'package:toptom_widgetbook/kit/export.dart';

export 'table_cell_widget.dart';

class TableWidget<T> extends StatelessWidget {
  final TableRow Function(T) builder;
  final TableRow header;
  final List<T> items;
  final EdgeInsets? padding;

  TableWidget({super.key, required this.builder, required this.items, required this.header, this.padding,});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoScrollbar(
          thumbVisibility: true,
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: padding ?? EdgeInsets.zero,
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: const IntrinsicColumnWidth(),
                  border: TableBorder.all(
                    color: ThemeCore.of(context).color.scheme.overlayPrimary,
                    borderRadius: BorderRadius.circular(
                      ThemeCore.of(context).radius.extraLarge,
                    ),
                  ),
                  children: [
                    header,
                    ...items.map(builder)
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
