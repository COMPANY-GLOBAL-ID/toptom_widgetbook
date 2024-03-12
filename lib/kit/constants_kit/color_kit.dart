import 'package:flutter/material.dart';

class ColorKit {
  static const ButtonColorKit buttonColor = ButtonColorKit(
    accent: Color.fromRGBO(250, 77, 30, 1),
    accentHover: Color.fromRGBO(221, 60, 16, 1),
    accentActive: Color.fromRGBO(218, 64, 23, 1),
    accentText: Color.fromRGBO(255, 255, 255, 1),
    accentGhostHover: Color.fromRGBO(255, 202, 188, 1),
    black: Color.fromRGBO(15, 14, 20, 1),
    blackHover: Color.fromRGBO(60, 58, 67, 1),
    blackActive: Color.fromRGBO(0, 0, 0, 1),
    blackText: Color.fromRGBO(255, 255, 255, 1),
    blackGhostHover: Color.fromRGBO(121, 119, 131, 1.0),
    defaultButtonHover: Color.fromRGBO(245, 246, 248, 1),
    disable: Color.fromRGBO(208, 213, 221, 1),
    disableText: Color.fromRGBO(139, 145, 169, 1),
  );

  //APP COLORS
  static const colorMain = Color.fromRGBO(250, 77, 30, 1);
  static const colorTextPrimary = Color.fromRGBO(15, 14, 20, 1);
  static const colorTextSecondary = Color.fromRGBO(139, 145, 169, 1);
  static const colorGray = Color.fromRGBO(72, 72, 72, 1);
  static const colorStrokePrimary = Color.fromRGBO(208, 213, 221, 1);
  static const colorBackgroundSecondary = Color.fromRGBO(245, 246, 248, 1);
  static const colorOverlayPrimary = Color.fromRGBO(243, 243, 243, 1);
  static const colorOverlaySecondary = Color.fromRGBO(233, 233, 233, 1);
  static const colorErrorSecondary = Color.fromRGBO(243, 195, 195, 1);
  static const colorPositiveSecondary = Color.fromRGBO(195, 243, 200, 1);
  static const colorWhite = Color.fromRGBO(255, 255, 255, 1);
  static const colorYelowStar = Color.fromRGBO(248, 145, 51, 1);

  static const defaultPrimary = Color.fromRGBO(15, 14, 20, 1);
  static const defaultTextPrimary = Color.fromRGBO(255, 255, 255, 1);
  static const errorPrimary = Color.fromRGBO(250, 30, 30, 1);
  static const errorTextPrimary = Color.fromRGBO(255, 255, 255, 1);
  static const positivePrimary = Color.fromRGBO(47, 168, 59, 1);
  static const positiveTextPrimary = Color.fromRGBO(255, 255, 255, 1);
  static const warningPrimary = Color.fromRGBO(255, 204, 0, 1);
  static const warningTextPrimary = Color.fromRGBO(255, 255, 255, 1);
  static const invertedPrimary = Color.fromRGBO(255, 255, 255, 1);
  static const invertedTextPrimary = Color.fromRGBO(15, 14, 20, 1);

  //BADGE COLORS
  static const badgeColorInfo = Color.fromRGBO(71, 173, 255, 1);
  static const badgeColorWarning = Color.fromRGBO(245, 167, 51, 1);
  static const badgeColorError = Color.fromRGBO(255, 68, 83, 1);
  static const badgeColorSuccess = Color.fromRGBO(52, 178, 99, 1);
  static const badgeColorNeutral = Color.fromRGBO(105, 117, 142, 1);
  static const badgeColorStatus1 = Color.fromRGBO(51, 193, 160, 1);
  static const badgeColorStatus2 = Color.fromRGBO(65, 168, 201, 1);
  static const badgeColorStatus3 = Color.fromRGBO(135, 117, 247, 1);
  static const badgeColorStatus4 = Color.fromRGBO(173, 80, 255, 1);
  static const badgeColorStatus5 = Color.fromRGBO(233, 97, 155, 1);
  static const badgeColorStatus6 = Color.fromRGBO(251, 117, 51, 1);

  //HELPER COLORS
  static const boxBorderGrey = Color.fromRGBO(68, 83, 113, 0.15);
  static const boxBackgroundGrey = Color.fromRGBO(249, 250, 251, 1);
  static const focusedButtonColor = Color.fromRGBO(221, 60, 16, 1);
  static const pressButtonColor = Color.fromRGBO(218, 64, 23, 1);
  static const focusedBlackButtonColor = Color.fromRGBO(60, 58, 67, 1);
  static const pressBlackButtonColor = Color.fromRGBO(0, 0, 0, 1);
  static const focusedButtonGhost = Color.fromRGBO(255, 202, 188, 1);
  static const pressButtonGhost = Color.fromRGBO(255, 182, 161, 1);
  static const deafautButtonPrimary = Color.fromRGBO(233, 233, 237, 1);
  static const defaultFocusColor = Color.fromRGBO(220, 220, 224, 1);
  static const closePressColor = Color.fromRGBO(0, 0, 0, 1);
  static const colorOverlayAlpha = Color.fromRGBO(206, 208, 212, 1);
  static const disabledTrackSwitch = Color.fromRGBO(255, 204, 199, 1);
  static const disabledTrackColor = Color.fromRGBO(229, 226, 225, 1);
}

class ButtonColorKit {
  final Color accent;
  final Color accentHover;
  final Color accentActive;
  final Color accentText;
  final Color accentGhostHover;
  final Color black;
  final Color blackHover;
  final Color blackActive;
  final Color blackText;
  final Color blackGhostHover;
  final Color defaultButtonHover;
  final Color disable;
  final Color disableText;

  const ButtonColorKit({
    required this.accent,
    required this.accentHover,
    required this.accentActive,
    required this.accentText,
    required this.accentGhostHover,
    required this.black,
    required this.blackHover,
    required this.blackActive,
    required this.blackText,
    required this.blackGhostHover,
    required this.defaultButtonHover,
    required this.disable,
    required this.disableText,
  });

  ButtonColorKit copyWith({
    Color? accent,
    Color? accentHover,
    Color? accentActive,
    Color? accentText,
    Color? accentGhostHover,
    Color? black,
    Color? blackHover,
    Color? blackActive,
    Color? blackText,
    Color? blackGhostHover,
    Color? defaultButtonHover,
    Color? disable,
    Color? disableText,
  }) {
    return ButtonColorKit(
      accent: accent ?? this.accent,
      accentHover: accentHover ?? this.accentHover,
      accentActive: accentActive ?? this.accentActive,
      accentText: accentText ?? this.accentText,
      accentGhostHover: accentGhostHover ?? this.accentGhostHover,
      black: black ?? this.black,
      blackHover: blackHover ?? this.blackHover,
      blackActive: blackActive ?? this.blackActive,
      blackText: blackText ?? this.blackText,
      blackGhostHover: blackGhostHover ?? this.blackGhostHover,
      defaultButtonHover: defaultButtonHover ?? this.defaultButtonHover,
      disable: disable ?? this.disable,
      disableText: disableText ?? this.disableText,
    );
  }
}
