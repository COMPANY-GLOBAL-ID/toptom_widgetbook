import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class TextAreaScreen extends StatelessWidget {
  const TextAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text("Text Area",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
