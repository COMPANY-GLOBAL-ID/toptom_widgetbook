import 'package:flutter/material.dart';

class BorderKit {
  final RoundedRectangleBorder borderDefaultLg;
  final RoundedRectangleBorder borderDefaultM;
  final RoundedRectangleBorder borderDefaultS;
  final OutlineInputBorder defaultTextInputBorder;
  const BorderKit({
    required this.borderDefaultLg,
    required this.borderDefaultM,
    required this.borderDefaultS,
    required this.defaultTextInputBorder,
  });

  BorderKit copyWith({
    RoundedRectangleBorder? borderDefaultLg,
    RoundedRectangleBorder? borderDefaultM,
    RoundedRectangleBorder? borderDefaultS,
    OutlineInputBorder? defaultTextInputBorder,
  }) {
    return BorderKit(
      borderDefaultLg: borderDefaultLg ?? this.borderDefaultLg,
      borderDefaultM: borderDefaultM ?? this.borderDefaultM,
      borderDefaultS: borderDefaultS ?? this.borderDefaultS,
      defaultTextInputBorder:
          defaultTextInputBorder ?? this.defaultTextInputBorder,
    );
  }
}
