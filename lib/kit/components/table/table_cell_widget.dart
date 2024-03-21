import 'package:flutter/material.dart';

class TableCellWidget extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;

  const TableCellWidget({super.key, required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 12,
        ),
        child: child,
      ),
    );
  }
}
