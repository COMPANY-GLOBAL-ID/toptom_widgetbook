
import 'package:flutter/material.dart';

class ToptomOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color;

  const ToptomOutlinedButton({super.key, this.onPressed, required this.child, this.color});

  @override
  Widget build(BuildContext context) {
    Color borderColor = color ?? Theme.of(context).colorScheme.primary;
    if(onPressed == null) {
      borderColor = Colors.grey.shade400;
    }

    return SizedBox(
      width: double.infinity,
      height: 45,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          side: BorderSide(color: borderColor),
          foregroundColor: borderColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }

}