import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/text_styles_kit.dart';

class ButtonStyleKit {
  //border
  static final borderDefault = MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(ConstantsKit.rdLg),
    ),
  );

  //paddings
  static const paddingXl = MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
  );

  static const paddingXlSquare = MaterialStatePropertyAll(
    EdgeInsets.all(16),
  );

  static const paddingL = MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    ),
  );

  static const paddingLSquare = MaterialStatePropertyAll(
    EdgeInsets.all(12),
  );

  static const paddingM = MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    ),
  );

  static const paddingMSquare = MaterialStatePropertyAll(
    EdgeInsets.all(8),
  );

  static const paddingSSquare = MaterialStatePropertyAll(
    EdgeInsets.all(4),
  );

  //accept
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

  //black
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

  //outline
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

  //outline text
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

  //text
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

  //default
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
}
