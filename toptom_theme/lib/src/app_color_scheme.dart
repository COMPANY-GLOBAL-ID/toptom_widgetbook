import 'package:flutter/material.dart';
import 'package:toptom_theme/top_kits/constants/top_colors.dart';

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
    required this.textPrimary,
  });

  AppColorScheme copyWith({
    required Color? primary,
    required Color? success,
    required Color? onSuccess,
    required Color? warning,
    required Color? onWarning,
    required Color? standard,
    required Color? onStandard,
    required Color? error,
    required Color? onError,
    required Color? errorSecondary,
    required Color? shadow,
    required Color? secondary,
    required Color? textPrimary,
  }) {
    return AppColorScheme(
      primary: primary ?? this.primary,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      standard: standard ?? this.standard,
      onStandard: onStandard ?? this.onStandard,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorSecondary: errorSecondary ?? this.errorSecondary,
      shadow: shadow ?? this.shadow,
      secondary: secondary ?? this.secondary,
      textPrimary: textPrimary ?? this.textPrimary,
    );
  }

  factory AppColorScheme.main() {
    return AppColorScheme(
      primary: TopColors.primary,
      success: TopColors.success,
      onSuccess: TopColors.onSuccess,
      warning: TopColors.warning,
      onWarning: TopColors.onWarning,
      standard: TopColors.standard,
      onStandard: TopColors.onStandard,
      error: TopColors.error,
      onError: TopColors.onError,
      errorSecondary: TopColors.errorSecondary,
      shadow: TopColors.shadow,
      secondary: TopColors.secondary,
      textPrimary: TopColors.textPrimary,
    );
  }
}
