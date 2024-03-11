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
  static const EdgeInsets EdgeInsetsM =
      EdgeInsets.symmetric(horizontal: 8, vertical: 4);
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

enum SizeKit {
  s,
  m,
  l,
  lg,
  xl,
  xl2,
  xl3,
  xl4,
  xl5,
  xl6,
  xl7,
  xl8,
  xl9,
  xl10;

  double get value {
    return switch (this) {
      SizeKit.s => 2,
      SizeKit.m => 4,
      SizeKit.l => 6,
      SizeKit.lg => 8,
      SizeKit.xl => 12,
      SizeKit.xl2 => 16,
      SizeKit.xl3 => 20,
      SizeKit.xl4 => 24,
      SizeKit.xl5 => 28,
      SizeKit.xl6 => 32,
      SizeKit.xl7 => 36,
      SizeKit.xl8 => 40,
      SizeKit.xl9 => 44,
      SizeKit.xl10 => 48,
    };
  }
}

class _ConstantsKit {
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
  static const EdgeInsets EdgeInsetsM =
      EdgeInsets.symmetric(horizontal: 8, vertical: 4);
  static const EdgeInsets EdgeInsetsS = EdgeInsets.symmetric(horizontal: 6);
}

enum RadiusType {
  rdS,
  rdM,
  rdL,
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
        return SizeKit.s.value;
      case RadiusType.rdM:
        return SizeKit.m.value;
      case RadiusType.rdL:
        return SizeKit.l.value;
      case RadiusType.rdLg:
        return SizeKit.lg.value;
      case RadiusType.rdXl:
        return SizeKit.xl.value;
      case RadiusType.rd2Xl:
        return SizeKit.xl2.value;
      case RadiusType.rd3Xl:
        return SizeKit.xl3.value;
      case RadiusType.rd4Xl:
        return SizeKit.xl4.value;
      case RadiusType.rd5Xl:
        return SizeKit.xl5.value;
      case RadiusType.rd6Xl:
        return SizeKit.xl6.value;
    }
  }
}
