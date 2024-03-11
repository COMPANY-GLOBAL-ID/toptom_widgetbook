import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class BackgroundStatesColorKit {
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

  static final blackStyle = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.pressBlackButtonColor;
      }
      if (states.contains(MaterialState.focused)) {
        return ColorKit.focusedBlackButtonColor;
      }
      if (states.contains(MaterialState.disabled)) {
        return ColorKit.colorStrokePrimary;
      }
      return ColorKit.colorTextPrimary;
    },
  );

  static final textButtonOverlayStyle =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.pressButtonGhost;
      }
      if (states.contains(MaterialState.focused)) {
        return ColorKit.focusedButtonGhost;
      }
      return ColorKit.colorWhite;
    },
  );

  static final defaultStyle = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.colorTextPrimary;
      }
      if (states.contains(MaterialState.focused)) {
        return ColorKit.defaultFocusColor;
      }
      if (states.contains(MaterialState.disabled)) {
        return ColorKit.colorStrokePrimary;
      }
      return ColorKit.deafautButtonPrimary;
    },
  );

  static final closeIconColor = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.closePressColor;
      }
      if (states.contains(MaterialState.hovered)) {
        return ColorKit.colorTextPrimary;
      }
      return ColorKit.colorOverlayPrimary;
    },
  );

  static final checkboxFillColor = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.colorMain;
      }
      if (states.contains(MaterialState.focused)) {
        return ColorKit.colorMain;
      }
      if (states.contains(MaterialState.selected)) {
        return ColorKit.colorMain;
      }
      if (states.contains(MaterialState.disabled)) {
        return ColorKit.colorStrokePrimary;
      }
      return ColorKit.colorWhite;
    },
  );

  static final iconButtonWhite = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.colorOverlayPrimary;
      }
      if (states.contains(MaterialState.disabled)) {
        return ColorKit.colorOverlayPrimary;
      }
      return ColorKit.colorWhite;
    },
  );

  static final iconButtonDefault = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.focused)) {
        return ColorKit.colorMain.withOpacity(0.5);
      }
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.focusedButtonColor;
      }
      if (states.contains(MaterialState.disabled)) {
        return ColorKit.colorOverlayPrimary;
      }
      return ColorKit.colorMain;
    },
  );

  static final iconOutlineColor = MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return ColorKit.colorOverlayPrimary;
      }
      if (states.contains(MaterialState.disabled)) {
        return ColorKit.colorOverlayPrimary;
      }
      return ColorKit.colorWhite;
    },
  );
}
