import 'package:flutter/material.dart';

class TypographyKit {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h5;
  final TextStyle h6;
  final TextStyle paragraphBig;
  final TextStyle paragraphMedium;
  final TextStyle paragraphSmall;
  final TextStyle labelBig;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
  final TextStyle labelLite;

  const TypographyKit({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
    required this.paragraphBig,
    required this.paragraphMedium,
    required this.paragraphSmall,
    required this.labelBig,
    required this.labelMedium,
    required this.labelSmall,
    required this.labelLite,
  });

  TypographyKit copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,
    TextStyle? paragraphBig,
    TextStyle? paragraphMedium,
    TextStyle? paragraphSmall,
    TextStyle? labelBig,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? labelLite,
  }) {
    return TypographyKit(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      h6: h6 ?? this.h6,
      paragraphBig: paragraphBig ?? this.paragraphBig,
      paragraphMedium: paragraphMedium ?? this.paragraphMedium,
      paragraphSmall: paragraphSmall ?? this.paragraphSmall,
      labelBig: labelBig ?? this.labelBig,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      labelLite: labelLite ?? this.labelLite,
    );
  }

  List<TextStyle> get values => [
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        paragraphBig,
        paragraphMedium,
        paragraphSmall,
        labelBig,
        labelMedium,
        labelSmall,
        labelLite,
      ];
}

class TypographyKitDefault {
  static TypographyKit typographyKit = TypographyKit(
    h1: TextStyle(
      fontSize: 56,
      fontWeight: FontWeight.w700,
    ),
    h2: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
    ),
    h3: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ),
    h4: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
    ),
    h5: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    h6: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    paragraphBig: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    paragraphMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    paragraphSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    labelBig: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    labelLite: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
  );
}
