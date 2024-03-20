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
    this.accent = const Color.fromRGBO(250, 77, 30, 1),
    this.accentHover = const Color.fromRGBO(221, 60, 16, 1),
    this.accentActive = const Color.fromRGBO(218, 64, 23, 1),
    this.accentText = const Color.fromRGBO(255, 255, 255, 1),
    this.accentGhostHover = const Color.fromRGBO(255, 202, 188, 1),
    this.black = const Color.fromRGBO(15, 14, 20, 1),
    this.blackHover = const Color.fromRGBO(60, 58, 67, 1),
    this.blackActive = const Color.fromRGBO(0, 0, 0, 1),
    this.blackText = const Color.fromRGBO(255, 255, 255, 1),
    this.blackGhostHover = const Color.fromRGBO(121, 119, 131, 1.0),
    this.defaultButtonHover = const Color.fromRGBO(245, 246, 248, 1),
    this.disable = const Color.fromRGBO(208, 213, 221, 1),
    this.disableText = const Color.fromRGBO(139, 145, 169, 1),
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
