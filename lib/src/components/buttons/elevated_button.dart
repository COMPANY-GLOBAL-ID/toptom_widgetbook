import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/toptom_components.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'ElevatedButton',
  type: Container,
)
Widget outlinedButton(BuildContext context) {
  final text = context.knobs.string(
      label: 'Text',
      initialValue: 'Text Example'
  );
  return Padding(
    padding: 20.p,
    child: Column(
      children: [
        10.h,
        ToptomElevatedButton(
          onPressed: () {},
          color: Colors.black,
          child: Text(text)
        ),
        10.h,
        ToptomElevatedButton(
          onPressed: () {},
          child: Text(text)
        ),
        10.h,
        ToptomElevatedButton(
          child: Text(text)
        ),
        10.h,
        ToptomElevatedButton(
          onPressed: () {},
          child: CupertinoActivityIndicator(color: Colors.white)
        )
      ],
    ),
  );
}

