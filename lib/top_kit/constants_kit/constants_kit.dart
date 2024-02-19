import 'package:flutter/material.dart';

class ConstantsKit {
  //Radius
  static const double rdS = 2;
  static const double rdM = 4;
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
  static const double iconL = 24;
  static const double iconS = 16;
}

// enum RadiusType {
//   S, M, Lg, Xl, X2l,
//   X3l,
//   X4l,
//   X5l,
//   X6l;

//   num getPixels() {
//     return switch (this) {
//       case RadiusType.S:
//         return 2;
//       case RadiusType.M:
//         return 3
//       case RadiusType.Lg:
//         return ConstantsKit.rdLg;
//       case RadiusType.Xl:
//         return ConstantsKit.rdXl;
//       case RadiusType.X2l:
//         return ConstantsKit.rd2Xl;
//       case RadiusType.X3l:
//         return ConstantsKit.rd3Xl;
//       case RadiusType.X4l:
//         return ConstantsKit.rd4Xl;
//       case RadiusType.X5l:
//         return ConstantsKit.rd5Xl;
//       case RadiusType.X6l:
//         return ConstantsKit.rd6Xl;
//       // TODO: Handle this case.
//       RadiusType.Lg => null,
//     }
//   }

//   Radius getCircularRadius() {
//     return switch(this) {
//       case RadiusType.S:
//         return BorderRadius.circular(ConstantsKit.rdS);
//       case RadiusType.M:
//         return BorderRadius.circular(ConstantsKit.rdM);
//       case RadiusType.Lg:
//         return BorderRadius.circular(ConstantsKit.rdLg);
//       case RadiusType.Xl:
//         return BorderRadius.circular(ConstantsKit.rdXl);
//       case RadiusType.X2l:
//         return BorderRadius.circular(ConstantsKit.rd2Xl);
//       case RadiusType.X3l:
//         return BorderRadius.circular(ConstantsKit.rd3Xl);
//       case RadiusType.X4l:
//         return BorderRadius.circular(ConstantsKit.rd4Xl);
//       case RadiusType.X5l:
//         return BorderRadius.circular(ConstantsKit.rd5Xl);
//       case RadiusType.X6l:
//         return BorderRadius.circular(ConstantsKit.rd6Xl);
//   }
// }
