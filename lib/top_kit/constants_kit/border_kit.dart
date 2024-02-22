import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class BorderKit {
  static final borderDefault = MaterialStateProperty.all(borderDefaultLg);

  static final borderDefaultLg = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ConstantsKit.rdLg),
  );

  static final borderDefaultM = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ConstantsKit.rdM),
  );

  static final borderDefaultS = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(ConstantsKit.rdS),
  );

  // text input
  static final OutlineInputBorder defaultTextInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(ConstantsKit.rdLg),
    gapPadding: 12,
  );
}
