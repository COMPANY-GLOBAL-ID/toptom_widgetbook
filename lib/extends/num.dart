import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension NumExtension on num {
  SizedBox get w => SizedBox(width: toDouble());
  SizedBox get h => SizedBox(height: toDouble());
  Radius get r => Radius.circular(toDouble());
  BorderRadius get br => BorderRadius.circular(toDouble());
  EdgeInsets get hp => EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get vp => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get p => EdgeInsets.all(toDouble());

  String get price => NumberFormat("#,###" ).format(toDouble());
}

