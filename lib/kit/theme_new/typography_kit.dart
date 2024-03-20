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
  final TextStyle label;

  const TypographyKit({
    this.h1 = const TextStyle(
        fontSize: 56, fontWeight: FontWeight.w700, height: 64 / 56),
    this.h2 = const TextStyle(
        fontSize: 40, fontWeight: FontWeight.w700, height: 48 / 40),
    this.h3 = const TextStyle(
        fontSize: 32, fontWeight: FontWeight.w700, height: 40 / 32),
    this.h4 = const TextStyle(
        fontSize: 28, fontWeight: FontWeight.w700, height: 36 / 28),
    this.h5 = const TextStyle(
        fontSize: 24, fontWeight: FontWeight.w700, height: 32 / 24),
    this.h6 = const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700, height: 28 / 20),
    this.paragraphBig = const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w700, height: 28 / 18),
    this.paragraphMedium = const TextStyle(
        fontSize: 16, fontWeight: FontWeight.w700, height: 24 / 16),
    this.paragraphSmall = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w700, height: 20 / 14),
    this.label = const TextStyle(
        fontSize: 12, fontWeight: FontWeight.w700, height: 16 / 12),
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
    TextStyle? label,
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
      label: label ?? this.label,
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
        label,
      ];
}
