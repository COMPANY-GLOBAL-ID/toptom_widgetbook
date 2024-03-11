import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class TextStylesKit {
  static const buttonXl = TextStyle(
    fontSize: 16,
    color: ColorKit.colorWhite,
    fontWeight: FontWeight.w500,
    height: 24 / 16,
  );

  static const buttonM = TextStyle(
    fontSize: 14,
    color: ColorKit.colorWhite,
    fontWeight: FontWeight.w500,
    height: 20 / 14,
  );

  static const buttonS = TextStyle(
    fontSize: 12,
    color: ColorKit.colorWhite,
    fontWeight: FontWeight.w500,
    height: 16 / 12,
  );

  static const selectedBottomM = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 20 / 12,
  );

  static const unSelectedBottomM = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    height: 20 / 12,
  );

  static const errorStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, height: 20 / 14);

  static const titleStyle = TextStyle(
    fontSize: 24,
    color: ColorKit.colorTextPrimary,
    fontWeight: FontWeight.w700,
    height: 32 / 24,
  );
}
