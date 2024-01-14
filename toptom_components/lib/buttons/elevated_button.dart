import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToptomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color;
  final Color? foregroundColor;
  final bool hasBorder;

  const ToptomElevatedButton({super.key, this.onPressed, required this.child, this.color, this.foregroundColor, this.hasBorder = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Theme.of(context).colorScheme.primary,
          foregroundColor: foregroundColor ?? Colors.white,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: hasBorder ? BorderSide() : BorderSide.none
          ),
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
