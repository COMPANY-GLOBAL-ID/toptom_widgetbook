import 'package:flutter/material.dart';
import 'package:toptom_theme/toptom_theme.dart';

class TopShadows {
  //
  static const smallTop = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, 2),
    blurRadius: 2,
    spreadRadius: 0,
  );
  static const smallBottom = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, -2),
    blurRadius: 2,
    spreadRadius: 0,
  );
  static const smallSecond = BoxShadow(
    color: TopColors.shadowSecond,
    offset: Offset(0, 0),
    blurRadius: 1,
    spreadRadius: 0,
  );

  //
  static const mediumTop = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, 4),
    blurRadius: 8,
    spreadRadius: 0,
  );
   static const mediumBottom = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, -4),
    blurRadius: 8,
    spreadRadius: 0,
  );
  static const mediumSecond = BoxShadow(
    color: TopColors.shadowSecond,
    offset: Offset(0, 0),
    blurRadius: 16,
    spreadRadius: 0,
  );

  //
  static const largeTop = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, 12),
    blurRadius: 20,
    spreadRadius: 0,
  );
  static const largeBottom = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, -12),
    blurRadius: 20,
    spreadRadius: 0,
  );
  static const largeSecond = BoxShadow(
    color: TopColors.shadowSecond,
    offset: Offset(0, 0),
    blurRadius: 20,
    spreadRadius: 0,
  );

  //
  static const xLargeTop = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, 32),
    blurRadius: 32,
    spreadRadius: 0,
  );
  static const xLargeBottom = BoxShadow(
    color: TopColors.shadowMain,
    offset: Offset(0, -32),
    blurRadius: 32,
    spreadRadius: 0,
  );
  static const xLargeSecond = BoxShadow(
    color: TopColors.shadowSecond,
    offset: Offset(0, 0),
    blurRadius: 32,
    spreadRadius: 0,
  );

  //
  static const controlsTop = BoxShadow(
    color: TopColors.shadowContols,
    offset: Offset(0, 2),
    blurRadius: 2,
    spreadRadius: 0,
  );
   static const controlsBottom = BoxShadow(
    color: TopColors.shadowContols,
    offset: Offset(0, -2),
    blurRadius: 2,
    spreadRadius: 0,
  );
  static const controlsSecond = BoxShadow(
    color: TopColors.shadowSecond,
    offset: Offset(0, 0),
    blurRadius: 1,
    spreadRadius: 0,
  );
}
