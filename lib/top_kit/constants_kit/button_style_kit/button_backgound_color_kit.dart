import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';

class ButtonBackgroundColorKit {
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

  static final outlineSideStyle = MaterialStateProperty.resolveWith<BorderSide>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return const BorderSide(
          color: ColorKit.pressButtonColor,
          width: 1,
        );
      }
      if (states.contains(MaterialState.focused)) {
        return const BorderSide(
          color: ColorKit.focusedButtonColor,
          width: 1,
        );
      }
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(
          color: ColorKit.colorStrokePrimary,
          width: 1,
        );
      }
      return const BorderSide(
        color: ColorKit.colorMain,
        width: 1,
      );
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
}
