import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class BorderKit {
  static final borderDefault = MaterialStateProperty.all(borderDefaultLg);

  static final borderDefaultLg = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(RadiusType.rdLg.radius),
  );

  static final borderDefaultM = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
  );

  static final borderDefaultS = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(RadiusType.rdS.radius),
  );

  // text input
  static final OutlineInputBorder defaultTextInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(RadiusType.rdLg.radius),
    gapPadding: 12,
  );
}
