import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  @widgetbook.UseCase(name: 'accept_xl', type: Button)
  Button acceptXl(BuildContext context) {
    return Button(
      text: 'Accept',
      onPressed: () {},
    );
  }
}
