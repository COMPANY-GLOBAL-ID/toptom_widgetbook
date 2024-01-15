import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_components/buttons/outlined_button.dart';
import 'package:toptom_components/extends/num.dart';
import 'package:toptom_flutter_fields/toptom_flutter_fields.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Text Fields',
  type: TextField,
)
Widget textFields(BuildContext context) {
  final label = context.knobs.string(
    label: 'Label',
    initialValue: 'Label'
  );
  final isRequired = context.knobs.boolean(
    label: 'Required',
    initialValue: false
  );
  return Padding(
    padding: 20.p,
    child: Column(
      children: [
        ToptomTextField(
          label: label,
          isRequired: isRequired,
          hintText: 'Text',
        ),
        ToptomPhoneField(
          label: label,
          isRequired: isRequired,
          hintText: '+7 (000) 000-00-00',
        ),
        ToptomDescriptionField(
          label: label,
          isRequired: isRequired,
          hintText: 'Description',
        ),
        ToptomNumberField(
          label: label,
          isRequired: isRequired,
          hintText: 'Number',
        ),
        ToptomPasswordField(
          label: label,
          hintText: 'Password',
          isRequired: isRequired,
          visibilityIcon: 'assets/icon',
          visibilityOffIcon: 'assets/icon'
        )
      ],
    ),
  );
}

