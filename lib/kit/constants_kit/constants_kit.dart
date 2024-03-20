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

class RadiusKit {
  final double small;
  final double small2;
  final double medium;
  final double large;
  final double extraLarge;
  final double extraLarge2;
  final double extraLarge3;
  final double extraLarge4;
  final double extraLarge5;
  final double extraLarge6;

  const RadiusKit({
    this.small = 2,
    this.small2 = 3,
    this.medium = 4,
    this.large = 6,
    this.extraLarge = 8,
    this.extraLarge2 = 12,
    this.extraLarge3 = 16,
    this.extraLarge4 = 20,
    this.extraLarge5 = 24,
    this.extraLarge6 = 28,
  });

  RadiusKit copyWith({
    double? small,
    double? small2,
    double? medium,
    double? large,
    double? extraLarge,
    double? extraLarge2,
    double? extraLarge3,
    double? extraLarge4,
    double? extraLarge5,
    double? extraLarge6,
  }) {
    return RadiusKit(
      small: small ?? this.small,
      small2: small2 ?? this.small2,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
      extraLarge2: extraLarge2 ?? this.extraLarge2,
      extraLarge3: extraLarge3 ?? this.extraLarge3,
      extraLarge4: extraLarge4 ?? this.extraLarge4,
      extraLarge5: extraLarge5 ?? this.extraLarge5,
      extraLarge6: extraLarge6 ?? this.extraLarge6,
    );
  }

  List<double> get values => [
        small,
        small2,
        medium,
        large,
        extraLarge,
        extraLarge2,
        extraLarge3,
        extraLarge4,
        extraLarge5,
        extraLarge6,
      ];
}
