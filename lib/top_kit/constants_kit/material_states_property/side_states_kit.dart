import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit_export.dart';


class SideStatesKit {
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

  static final sideKit = MaterialStateBorderSide.resolveWith(
    (states) {
      if (states.contains(MaterialState.focused)) {
        return const BorderSide(
          color: ColorKit.colorTextSecondary,
          width: 2,
        );
      }
      if (states.contains(MaterialState.pressed)) {
        return const BorderSide(width: 0);
      }
      if (states.contains(MaterialState.selected)) {
        return const BorderSide(width: 0);
      }
      return const BorderSide(
        color: ColorKit.colorOverlayAlpha,
        width: 2,
      );
    },
  );

  static final outlineIconSideStyle =
      MaterialStateProperty.resolveWith<BorderSide>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.focused)) {
        return const BorderSide(
          color: ColorKit.colorWhite,
          width: 0,
        );
      }
      if (states.contains(MaterialState.pressed)) {
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
}
