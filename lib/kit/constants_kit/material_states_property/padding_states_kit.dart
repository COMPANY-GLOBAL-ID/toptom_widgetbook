import 'package:flutter/material.dart';

class PaddingStatesKit {
  static const paddingXl = WidgetStatePropertyAll(
    EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
  );

  static const paddingXlSquare = WidgetStatePropertyAll(
    EdgeInsets.all(16),
  );

  static const paddingL = WidgetStatePropertyAll(
    EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    ),
  );

  static const paddingLSquare = WidgetStatePropertyAll(
    EdgeInsets.all(12),
  );

  static const paddingM = WidgetStatePropertyAll(
    EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    ),
  );

  static const paddingMSquare = WidgetStatePropertyAll(
    EdgeInsets.all(8),
  );

  static const paddingMsSquare = WidgetStatePropertyAll(
    EdgeInsets.all(6),
  );

  static const paddingSSquare = WidgetStatePropertyAll(
    EdgeInsets.all(4),
  );
}
