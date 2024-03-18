part of 'color_kit.dart';

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
