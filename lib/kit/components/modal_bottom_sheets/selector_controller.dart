import 'package:flutter/material.dart';

class SelectorController<T> extends ValueNotifier<T?> {
  SelectorController({T? value}) : super(value);
  void change(T? value) {
    this.value = value;
    notifyListeners();
  }

  void clear(T? tempValue) {
    value = null;
    notifyListeners();
  }
}
