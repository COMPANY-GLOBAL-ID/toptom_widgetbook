import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class TextAreaScreen extends StatelessWidget {
  const TextAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text("TextArea"),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 8,),
              Expanded(
                child: TextAreaWidget.maxLinesXl(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesS(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 8,),
              Expanded(
                child: TextAreaWidget.maxLinesXl(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                  child: TextAreaWidget.maxLinesS(
                    hintText: "Text Area",
                    enabled: true,
                  )
              ),
              const SizedBox(width: 8,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 8,),
              Expanded(
                child:TextAreaWidget.maxLinesXl(
                  hintText: "Text Area",
                  enabled: false,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  hintText: "Text Area",
                  enabled: false,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesS(
                  hintText: "Text Area",
                  enabled: false,
                ),
              ),
              const SizedBox(width: 8,),
            ],
          ),
        ],
      ),
    );
  }
}
