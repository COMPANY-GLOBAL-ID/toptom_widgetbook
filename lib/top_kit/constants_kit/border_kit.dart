import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';

class BorderKit {
  static final borderDefault = MaterialStateProperty.all(borderDefaultLg);

  static final borderDefaultLg = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ConstantsKit.rdLg),
  );

  static final borderDefaultS = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ConstantsKit.rdS),
  );
}
