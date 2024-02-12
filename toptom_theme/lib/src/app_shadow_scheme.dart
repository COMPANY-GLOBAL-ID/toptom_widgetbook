import 'package:flutter/material.dart';

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

  factory AppShadowScheme.copyWith({
    required List<BoxShadow> small,
    required List<BoxShadow> medium,
    required List<BoxShadow> large,
    required List<BoxShadow> xLarge,
    required List<BoxShadow> controls,
  }) {
    return AppShadowScheme(
      small: small,
      medium: medium,
      large: large,
      xLarge: xLarge,
      controls: controls,
    );
  }

  factory AppShadowScheme.bottom() {
    return const AppShadowScheme(
      small: [
        BoxShadow(
          color: Color(0x44537133),
          offset: Offset(0, 2),
          blurRadius: 2,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 1,
          spreadRadius: 0,
        ),
      ],
      medium: [
        BoxShadow(
          color: Color(0x4453710D),
          offset: Offset(0, 4),
          blurRadius: 8,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 16,
          spreadRadius: 0,
        ),
      ],
      large: [
        BoxShadow(
          color: Color(0x4453710D),
          offset: Offset(0, 12),
          blurRadius: 20,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 20,
          spreadRadius: 0,
        ),
      ],
      xLarge: [
        BoxShadow(
          color: Color(0x4453710D),
          offset: Offset(0, 32),
          blurRadius: 32,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 32,
          spreadRadius: 0,
        ),
      ],
      controls: [
        BoxShadow(
          color: Color(0x44537133),
          offset: Offset(0, 2),
          blurRadius: 2,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 1,
          spreadRadius: 0,
        ),
      ],
    );
  }

  factory AppShadowScheme.top() {
    return const AppShadowScheme(
      small: [
        BoxShadow(
          color: Color(0x44537133),
          offset: Offset(0, -2),
          blurRadius: 2,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 1,
          spreadRadius: 0,
        ),
      ],
      medium: [
        BoxShadow(
          color: Color(0x4453710D),
          offset: Offset(0, -4),
          blurRadius: 8,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 16,
          spreadRadius: 0,
        ),
      ],
      large: [
        BoxShadow(
          color: Color(0x4453710D),
          offset: Offset(0, -12),
          blurRadius: 20,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 20,
          spreadRadius: 0,
        ),
      ],
      xLarge: [
        BoxShadow(
          color: Color(0x4453710D),
          offset: Offset(0, -32),
          blurRadius: 32,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 32,
          spreadRadius: 0,
        ),
      ],
      controls: [
        BoxShadow(
          color: Color(0x44537133),
          offset: Offset(0, 2),
          blurRadius: 2,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0x4453711A),
          offset: Offset(0, 0),
          blurRadius: 1,
          spreadRadius: 0,
        ),
      ],
    );
  }
}
