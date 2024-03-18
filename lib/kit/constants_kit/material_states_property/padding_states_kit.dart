import 'package:flutter/material.dart';

class PaddingStatesKit {
  static const paddingXl = MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
  );

  static const paddingXlSquare = MaterialStatePropertyAll(
    EdgeInsets.all(16),
  );

  static const paddingL = MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    ),
  );

  static const paddingLSquare = MaterialStatePropertyAll(
    EdgeInsets.all(12),
  );

  static const paddingM = MaterialStatePropertyAll(
    EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    ),
  );

  static const paddingMSquare = MaterialStatePropertyAll(
    EdgeInsets.all(8),
  );

  static const paddingMsSquare = MaterialStatePropertyAll(
    EdgeInsets.all(6),
  );

  static const paddingSSquare = MaterialStatePropertyAll(
    EdgeInsets.all(4),
  );
}

enum PaddingKit {
  xl,
  l,
  m,
  ms,
  s;

  double get value {
    switch (this) {
      case PaddingKit.xl:
        return 20;
      case PaddingKit.l:
        return 16;
      case PaddingKit.m:
        return 12;
      case PaddingKit.ms:
        return 8;
      case PaddingKit.s:
        return 4;
    }
  }
}
