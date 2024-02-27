import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class TextStyleStatesKit {
  static final outlineTextStyle = MaterialStateProperty.resolveWith<TextStyle>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return TextStylesKit.buttonXl.copyWith(
          color: ColorKit.pressButtonColor,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return TextStylesKit.buttonXl.copyWith(
          color: ColorKit.focusedButtonColor,
        );
      }
      if (states.contains(MaterialState.disabled)) {
        return TextStylesKit.buttonXl.copyWith(
          color: ColorKit.colorStrokePrimary,
        );
      }
      return TextStylesKit.buttonXl.copyWith(
        color: ColorKit.colorMain,
      );
    },
  );
}
