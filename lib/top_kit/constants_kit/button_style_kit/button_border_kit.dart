import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';

class ButtonBorderKit {
  static final borderDefault = MaterialStateProperty.all(borderDefaultFrame);

  static final borderDefaultFrame = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ConstantsKit.rdLg),
  );
}
