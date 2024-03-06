import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class TextAreaScreen extends StatelessWidget {
  const TextAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController1 =
        TextEditingController();
    final TextEditingController textEditingController2 =
        TextEditingController();
    final TextEditingController textEditingController3 =
        TextEditingController();
    final TextEditingController textEditingController4 =
        TextEditingController();
    final TextEditingController textEditingController5 =
        TextEditingController();
    final TextEditingController textEditingController6 =
        TextEditingController();
    final TextEditingController textEditingController7 =
        TextEditingController();
    final TextEditingController textEditingController8 =
        TextEditingController();
    final TextEditingController textEditingController9 =
        TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text("Text Area",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextAreaWidget.maxLinesXl(
                  controller: textEditingController1,
                  hintText: "Text Area",
                  enabled: true,
                  errorText: null,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  controller: textEditingController2,
                  hintText: "Text Area",
                  enabled: true,
                  errorText: null,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesS(
                  controller: textEditingController3,
                  hintText: "Text Area",
                  enabled: true,
                  errorText: null,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextAreaWidget.maxLinesXl(
                  controller: textEditingController4,
                  hintText: "Text Area",
                  enabled: true,
                  errorText: '',
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  controller: textEditingController5,
                  hintText: "Text Area",
                  enabled: true,
                  errorText: '',
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                  child: TextAreaWidget.maxLinesS(
                controller: textEditingController6,
                hintText: "Text Area",
                enabled: true,
                errorText: '',
              )),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextAreaWidget.maxLinesXl(
                  controller: textEditingController7,
                  hintText: "Text Area",
                  enabled: false,
                  errorText: null,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  controller: textEditingController8,
                  hintText: "Text Area",
                  enabled: false,
                  errorText: null,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesS(
                  controller: textEditingController9,
                  hintText: "Text Area",
                  enabled: false,
                  errorText: null,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
