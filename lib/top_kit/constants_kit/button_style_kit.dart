import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';

class ButtonStyleKit {
  static final acceptStyle = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.pressButtonColor;
      }
      if (states.contains(MaterialState.focused)) {
        return ColorKit.focusedButtonColor;
      }
      if (states.contains(MaterialState.disabled)) {
        return ColorKit.colorStrokePrimary;
      }
      return ColorKit.colorMain;
    },
  );
}
