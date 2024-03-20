import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class StepperWidget extends StatefulWidget {
  final StepperController controller;
  final Color minusColor;
  final Color plusColor;

  const StepperWidget({
    super.key,
    this.minusColor = Colors.black,
    this.plusColor = Colors.black,
    required this.controller,
  });

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  bool _pressed = false;

  Future<void> _incrementCounter() async {
    widget.controller.increment();
    if (_pressed) {
      await Future.delayed(const Duration(milliseconds: 100));
      _incrementCounter();
    }
  }

  Future<void> _incrementLong() async {
    _pressed = true;
    await _incrementCounter();
  }

  Future<void> _decrementCounter() async {
    widget.controller.decrement();
    if (_pressed) {
      await Future.delayed(const Duration(milliseconds: 100));
      _decrementCounter();
    }
  }

  Future<void> _decrementLong() async {
    _pressed = true;
    await _decrementCounter();
  }

  void _longEnd(LongPressEndDetails details) => _pressed = false;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: ThemeCore.of(context).color.scheme.backgroundSecondary,
          borderRadius:
              BorderRadius.circular(ThemeCore.of(context).radius.small)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 12.0,
        ),
        child: ValueListenableBuilder(
          valueListenable: widget.controller,
          builder: (context, value, child) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _decrementCounter,
                  onLongPress: _decrementLong,
                  onLongPressEnd: _longEnd,
                  child: Icon(
                    ToptomIcons.remove_small,
                    color: widget.minusColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: AutoSizeText(
                    value.toString(),
                    style: ThemeCore.of(context).typography.paragraphMedium,
                    minFontSize: 12,
                  ),
                ),
                GestureDetector(
                    onLongPress: _incrementLong,
                    onLongPressEnd: _longEnd,
                    onTap: _incrementCounter,
                    child: Icon(
                      ToptomIcons.add_small,
                      color: widget.plusColor,
                    )),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StepperController extends ValueNotifier<int> {
  StepperController({int? value}) : super(value ?? 1);

  void increment() {
    value++;
    notifyListeners();
  }

  void decrement() {
    if (value <= 0) return;
    value--;
    notifyListeners();
  }
}
