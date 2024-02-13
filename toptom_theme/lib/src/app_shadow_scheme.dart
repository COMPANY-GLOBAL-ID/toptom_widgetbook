import 'package:flutter/material.dart';
import 'package:toptom_theme/toptom_theme.dart';

class AppShadowScheme {
  final List<BoxShadow> small;
  final List<BoxShadow> medium;
  final List<BoxShadow> large;
  final List<BoxShadow> xLarge;
  final List<BoxShadow> controls;

  const AppShadowScheme({
    required this.small,
    required this.medium,
    required this.large,
    required this.xLarge,
    required this.controls,
  });

  AppShadowScheme copyWith({
    required List<BoxShadow>? small,
    required List<BoxShadow>? medium,
    required List<BoxShadow>? large,
    required List<BoxShadow>? xLarge,
    required List<BoxShadow>? controls,
  }) {
    return AppShadowScheme(
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      xLarge: xLarge ?? this.xLarge,
      controls: controls ?? this.controls,
    );
  }

  factory AppShadowScheme.top() {
    return const AppShadowScheme(
      small: [
        TopShadows.smallTop,
        TopShadows.smallSecond,
      ],
      medium: [
        TopShadows.mediumTop,
        TopShadows.mediumSecond,
      ],
      large: [
        TopShadows.largeTop,
        TopShadows.largeSecond,
      ],
      xLarge: [
        TopShadows.xLargeTop,
        TopShadows.largeSecond,
      ],
      controls: [
        TopShadows.controlsTop,
        TopShadows.controlsSecond,
      ],
    );
  }

  factory AppShadowScheme.bottom() {
    return const AppShadowScheme(
      small: [
        TopShadows.smallBottom,
        TopShadows.smallSecond,
      ],
      medium: [
        TopShadows.mediumBottom,
        TopShadows.mediumSecond,
      ],
      large: [
        TopShadows.largeBottom,
        TopShadows.largeSecond,
      ],
      xLarge: [
        TopShadows.xLargeBottom,
        TopShadows.xLargeSecond,
      ],
      controls: [
        TopShadows.controlsBottom,
        TopShadows.controlsSecond,
      ],
    );
  }
}
