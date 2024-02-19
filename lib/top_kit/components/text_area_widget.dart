import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';

class TextAreaWidget extends StatelessWidget {
  final int maxLines;
  final bool? enabled;
  final bool? filled;
  const TextAreaWidget({
    super.key,
    this.enabled = true,
    this.filled = false,
    required this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(value == "Text Area"){
        }
      },
      enabled: enabled,
      maxLines: maxLines,
      decoration: InputDecoration(
          filled: filled,
          fillColor: Colors.grey.shade200,
          hintText: "Text Area"
      ),
    );
  }
  factory TextAreaWidget.maxLinesXl({
    bool? enabled,
    bool? filled,
}) =>  TextAreaWidget(
    maxLines: ConstantsKit.maxLinesXl,
    enabled: enabled,
    filled: filled,
  );

  factory TextAreaWidget.maxLinesL({
    bool? enabled,
    bool? filled,
  }) =>
      TextAreaWidget(
          maxLines: ConstantsKit.maxLinesL,
          enabled: enabled,
          filled: filled,
         );

  factory TextAreaWidget.maxLinesS({
    bool? enabled,
    bool? filled,
  }) =>
      TextAreaWidget(
          enabled: enabled,
          filled: filled,
          maxLines: ConstantsKit.maxLinesS,
      );
}
