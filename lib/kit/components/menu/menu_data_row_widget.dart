import 'package:flutter/material.dart';

class MenuDataRow extends StatelessWidget {
  final VoidCallback? onTap;
  final Icon? icon;
  final String text;
  const MenuDataRow({super.key, this.icon, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          // color: ColorKit.menuDataColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              if (icon != null) icon!,
              Expanded(child: Text(text)),
              const Icon(Icons.keyboard_arrow_right_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
