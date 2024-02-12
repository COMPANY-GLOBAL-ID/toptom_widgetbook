
import 'package:flutter/material.dart';

class AppColorScheme {
  final Color primary;
  final Color success;
  final Color onSuccess;
  final Color warning;
  final Color onWarning;
  final Color standard;
  final Color onStandard;
  final Color error;
  final Color onError;
  final Color errorSecondary;
  final Color shadow;
  final Color secondary;
  final Color textPrimary;


  const AppColorScheme({
    required this.primary,
    required this.success,
    required this.onSuccess,
    required this.warning,
    required this.onWarning,
    required this.standard,
    required this.onStandard,
    required this.error,
    required this.onError,
    required this.errorSecondary,
    required this.shadow,
    required this.secondary,
    required this.textPrimary
  });

  factory AppColorScheme.copyWith({
    required Color primary,
    required Color success,
    required Color onSuccess,
    required Color warning,
    required Color onWarning,
    required Color standard,
    required Color onStandard,
    required Color error,
    required Color onError,
    required Color errorSecondary,
    required Color shadow,
    required Color secondary,
    required Color textPrimary
  }) {
    return AppColorScheme(
      primary: primary,
      success: success,
      onSuccess: onSuccess,
      warning: warning,
      onWarning: onWarning,
      standard: standard,
      onStandard: onStandard,
      error: error,
      onError: onError,
      errorSecondary: errorSecondary,
      shadow: shadow,
      secondary: secondary,
      textPrimary: textPrimary
    );
  }

  factory AppColorScheme.main() {
    return AppColorScheme(
      primary: Color.fromRGBO(250, 77, 30, 1),
      success: Color.fromRGBO(25, 175, 102, 1),
      onSuccess: Colors.white,
      warning: Color.fromRGBO(248, 191, 0, 1),
      onWarning: Colors.white,
      standard: Color.fromRGBO(35, 31, 32, 1),
      onStandard: Colors.white,
      error: Color.fromRGBO(243, 87, 70, 1),
      onError: Colors.white,
      errorSecondary: Color.fromRGBO(243, 195, 195, 1),
      shadow: Colors.grey.shade300,
      secondary: Color.fromRGBO(139, 145, 169, 1),
      textPrimary: Color.fromRGBO(14, 17, 23, 1)
    );
  }
}