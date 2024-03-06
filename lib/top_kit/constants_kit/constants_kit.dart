import 'package:flutter/material.dart';


class ConstantsKit {

  //Size
  static const sizeXl = Size(56, 56);
  static const sizeL = Size(48, 48);
  static const sizeM = Size(40, 40);
  static const sizeMs = Size(36, 36);
  static const sizeS = Size(24, 24);


  // maxLines
  static const maxLinesXl = 4;
  static const maxLinesL = 3;
  static const maxLinesS = 2;

  static const double iconL = 24;
  static const double iconLg = 18;
  static const double iconS = 16;
  static const double iconM = 12;

  // EdgeInsets
  static const EdgeInsets EdgeInsetsM = EdgeInsets.symmetric(horizontal: 8,vertical: 4);
  static const EdgeInsets EdgeInsetsS = EdgeInsets.symmetric(horizontal: 6);

  // shadow.bottom
  static const Shadow shadowBottomSmall = Shadow(
    offset: Offset(0, 2),
    blurRadius: 4,
  );
  static const Shadow shadowBottomMedium = Shadow(
      offset: Offset(0, 4),
      blurRadius: 8,
  );
  static const Shadow shadowBottomLarge = Shadow(
      offset: Offset(0, 12),
      blurRadius: 20,
  );
  static const Shadow shadowBottomXLarge = Shadow(
      offset: Offset(0, 32),
      blurRadius: 32,
  );
  static const Shadow shadowBottomControls = Shadow(
      offset: Offset(0, 2),
      blurRadius: 2,
  );

  // shadow.top
  static const Shadow shadowTopSmall = Shadow(
      offset: Offset(0, -2),
      blurRadius: 4,
  );
  static const Shadow shadowTopMedium = Shadow(
      offset: Offset(0, -4),
      blurRadius: 8,
  );
  static const Shadow shadowTopLarge = Shadow(
      offset: Offset(0, -12),
      blurRadius: 20,
  );
  static const Shadow shadowTopXLarge = Shadow(
      offset: Offset(0, -32),
      blurRadius: 32,
  );
  static const Shadow shadowTopControls = Shadow(
      offset: Offset(0, -2),
      blurRadius: 2,
  );
}


class _ConstantsKit {
  //Radius
  static const double rdS = 2;
  static const double rdM = 4;
  static const double rdLgS = 6;
  static const double rdLg = 8;
  static const double rdXl = 12;
  static const double rd2Xl = 16;
  static const double rd3Xl = 20;
  static const double rd4Xl = 24;
  static const double rd5Xl = 28;
  static const double rd6Xl = 32;

  //Size
  static const sizeXl = Size(56, 56);
  static const sizeL = Size(48, 48);
  static const sizeM = Size(40, 40);
  static const sizeMs = Size(36, 36);
  static const sizeS = Size(24, 24);


  // maxLines
  static const maxLinesXl = 4;
  static const maxLinesL = 3;
  static const maxLinesS = 2;

  static const double iconL = 24;
  static const double iconLg = 18;
  static const double iconS = 16;
  static const double iconM = 12;

  // EdgeInsets
  static const EdgeInsets EdgeInsetsM = EdgeInsets.symmetric(horizontal: 8,vertical: 4);
  static const EdgeInsets EdgeInsetsS = EdgeInsets.symmetric(horizontal: 6);
}

enum RadiusType {
  rdS,
  rdM,
  rdLgS,
  rdLg,
  rdXl,
  rd2Xl,
  rd3Xl,
  rd4Xl,
  rd5Xl,
  rd6Xl;
  
  double get radius {
    switch (this) {
      case RadiusType.rdS:
        return _ConstantsKit.rdS;
      case RadiusType.rdM:
        return _ConstantsKit.rdM;
      case RadiusType.rdLgS:
        return _ConstantsKit.rdLgS;
      case RadiusType.rdLg:
        return _ConstantsKit.rdLg;
      case RadiusType.rdXl:
        return _ConstantsKit.rdXl;
      case RadiusType.rd2Xl:
        return _ConstantsKit.rd2Xl;
      case RadiusType.rd3Xl:
        return _ConstantsKit.rd3Xl;
      case RadiusType.rd4Xl:
        return _ConstantsKit.rd4Xl;
      case RadiusType.rd5Xl:
        return _ConstantsKit.rd5Xl;
      case RadiusType.rd6Xl:
        return _ConstantsKit.rd6Xl;
    }
  }
}