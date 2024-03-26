part of 'color_kit.dart';

class ColorSchemeKit {
  final Color main;
  final Color textPrimary;
  final Color textSecondary;
  final Color gray;
  final Color strokePrimary;
  final Color backgroundSecondary;
  final Color overlayPrimary;
  final Color overlaySecondary;
  final Color errorPrimary;
  final Color errorSecondary;
  final Color positiveSecondary;
  final Color white;
  final Color yellowStar;

  const ColorSchemeKit({
    this.main = const Color.fromRGBO(250, 77, 30, 1),
    this.textPrimary = const Color.fromRGBO(15, 14, 20, 1),
    this.textSecondary = const Color.fromRGBO(139, 145, 169, 1),
    this.gray = const Color.fromRGBO(72, 72, 72, 1),
    this.strokePrimary = const Color.fromRGBO(208, 213, 221, 1),
    this.backgroundSecondary = const Color.fromRGBO(245, 246, 248, 1),
    this.overlayPrimary = const Color.fromRGBO(243, 243, 243, 1),
    this.overlaySecondary = const Color.fromRGBO(233, 233, 233, 1),
    this.errorPrimary = const Color.fromRGBO(250, 30, 30, 1),
    this.errorSecondary = const Color.fromRGBO(243, 195, 195, 1),
    this.positiveSecondary = const Color.fromRGBO(195, 243, 200, 1),
    this.white = const Color.fromRGBO(255, 255, 255, 1),
    this.yellowStar = const Color.fromRGBO(248, 145, 51, 1),
  });
}