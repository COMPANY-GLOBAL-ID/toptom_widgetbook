import 'package:flutter/material.dart';

class AppBorderRadius {
  final BorderRadius rd;
  final BorderRadius rdLg;
  final BorderRadius rdXl;
  final BorderRadius rd2Xl;
  final BorderRadius rd3Xl;
  final BorderRadius rd4Xl;
  final BorderRadius rd5Xl;
  final BorderRadius rd6Xl;

  AppBorderRadius({
    required this.rd,
    required this.rdLg,
    required this.rdXl,
    required this.rd2Xl,
    required this.rd3Xl,
    required this.rd4Xl,
    required this.rd5Xl,
    required this.rd6Xl,
  });

  AppBorderRadius copyWith({
    required BorderRadius? rd,
    required BorderRadius? rdLg,
    required BorderRadius? rdXl,
    required BorderRadius? rd2Xl,
    required BorderRadius? rd3Xl,
    required BorderRadius? rd4Xl,
    required BorderRadius? rd5Xl,
    required BorderRadius? rd6Xl,
  }) {
    return AppBorderRadius(
      rd: rd ?? this.rd,
      rdLg: rdLg ?? this.rdLg,
      rdXl: rdXl ?? this.rdXl,
      rd2Xl: rd2Xl ?? this.rd2Xl,
      rd3Xl: rd3Xl ?? this.rd3Xl,
      rd4Xl: rd4Xl ?? this.rd4Xl,
      rd5Xl: rd5Xl ?? this.rd5Xl,
      rd6Xl: rd6Xl ?? this.rd5Xl,
    );
  }

  factory AppBorderRadius.main() {
    return AppBorderRadius(
      rd: BorderRadius.circular(4),
      rdLg: BorderRadius.circular(8),
      rdXl: BorderRadius.circular(12),
      rd2Xl: BorderRadius.circular(16),
      rd3Xl: BorderRadius.circular(20),
      rd4Xl: BorderRadius.circular(24),
      rd5Xl: BorderRadius.circular(28),
      rd6Xl: BorderRadius.circular(32),
    );
  }
}
