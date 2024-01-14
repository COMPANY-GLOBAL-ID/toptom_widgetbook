import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/buttons/outlined_button.dart';
import 'package:toptom_components/extends/num.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'OutlinedButton',
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
        ToptomOutlinedButton(
            color: Colors.black,
            onPressed: () {},
            child: Text(text)
        ),
        10.h,
        ToptomOutlinedButton(
          onPressed: () {},
          child: Text(text)
        ),
        10.h,
        ToptomOutlinedButton(
          child: Text(text)
        ),
        10.h,
        ToptomOutlinedButton(
          onPressed: () {},
          child: CupertinoActivityIndicator(
            color: Theme.of(context).colorScheme.primary,
          )
        )
      ],
    ),
  );
}

