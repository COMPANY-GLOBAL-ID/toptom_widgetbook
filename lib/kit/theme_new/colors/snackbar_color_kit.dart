part of 'color_kit.dart';

class SnackBarColorKit {
  final Color defaultPrimary;
  final Color defaultText;
  final Color error;
  final Color errorText;
  final Color positive;
  final Color positiveText;
  final Color warning;
  final Color warningText;
  final Color inverted;
  final Color invertedText;

  const SnackBarColorKit({
    this.defaultPrimary = const Color.fromRGBO(15, 14, 20, 1),
    this.defaultText = const Color.fromRGBO(255, 255, 255, 1),
    this.error = const Color.fromRGBO(250, 30, 30, 1),
    this.errorText = const Color.fromRGBO(255, 255, 255, 1),
    this.positive = const Color.fromRGBO(47, 168, 59, 1),
    this.positiveText = const Color.fromRGBO(255, 255, 255, 1),
    this.warning = const Color.fromRGBO(255, 204, 0, 1),
    this.warningText = const Color.fromRGBO(255, 255, 255, 1),
    this.inverted = const Color.fromRGBO(255, 255, 255, 1),
    this.invertedText = const Color.fromRGBO(15, 14, 20, 1),
  });
}
