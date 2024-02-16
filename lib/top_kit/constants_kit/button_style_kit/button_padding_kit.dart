import 'package:flutter/material.dart';

class ButtonPaddingKit {
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

  static const paddingSSquare = MaterialStatePropertyAll(
    EdgeInsets.all(4),
  );
}
