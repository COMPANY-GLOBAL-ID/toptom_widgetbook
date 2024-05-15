
import 'package:flutter/material.dart';

class MyDraggableScrollableSheet extends StatelessWidget {
  final double maxChildSize;
  final Widget Function(BuildContext, ScrollController) builder;

  const MyDraggableScrollableSheet(
      {super.key, required this.maxChildSize, required this.builder});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        snap: true,
        expand: true,
        initialChildSize: maxChildSize,
        maxChildSize: maxChildSize,
        minChildSize: maxChildSize,
        builder: builder);
  }
}
