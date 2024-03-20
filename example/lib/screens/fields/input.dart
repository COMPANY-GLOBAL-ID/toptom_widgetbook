import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text("Input", style: ThemeCore.of(context).typography.h2),
            const SizedBox(
              height: 10,
            ),
            TextFieldWidget(
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFieldWidget.description(
              controller: textEditingController,
            )
          ],
        ),
      ),
    );
  }
}
