import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class DraggableModalBottomSheetWidget extends StatefulWidget {
  final DraggableModalBottomSheetOptions options;
  const DraggableModalBottomSheetWidget({super.key, required this.options});

  @override
  State<DraggableModalBottomSheetWidget> createState() =>
      _DraggableModalBottomSheetWidgetState();
}

class _DraggableModalBottomSheetWidgetState
    extends State<DraggableModalBottomSheetWidget> {
  late DraggableScrollableController _draggableScrollableController;
  final _sheet = GlobalKey();
  @override
  void initState() {
    super.initState();
    _draggableScrollableController = DraggableScrollableController();
    _draggableScrollableController.addListener(_onChanged);
  }

  void _onChanged() {
    final currentSize = _draggableScrollableController.size;
    if (currentSize <= 0.05) _collapse();
  }

  void _collapse() => _animateSheet(sheet.snapSizes!.first);

  void _animateSheet(double size) {
    _draggableScrollableController.animateTo(
      size,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }

  DraggableScrollableSheet get sheet =>
      (_sheet.currentWidget as DraggableScrollableSheet);

  @override
  void dispose() {
    super.dispose();
    _draggableScrollableController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return DraggableScrollableSheet(
        key: _sheet,
        controller: _draggableScrollableController,
        initialChildSize: widget.options.initialChildSize,
        maxChildSize: widget.options.maxChildSize,
        expand: widget.options.expand,
        snap: widget.options.snap,
        minChildSize: widget.options.minChildSize,
        snapSizes: [
          60 / constraints.maxHeight,
          0.5,
        ],
        builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.all(ThemeCore.of(context).padding.xl),
              child: widget.options.childBuilder(context),
            ),
          );
        },
      );
    });
  }
}
