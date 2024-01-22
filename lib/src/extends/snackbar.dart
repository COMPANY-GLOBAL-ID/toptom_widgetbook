import 'package:flutter/material.dart';

extension SnackBarView on SnackBar {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> view(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    return ScaffoldMessenger.of(context).showSnackBar(this);
  }
}