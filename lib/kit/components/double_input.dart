import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class DoubleInput extends StatefulWidget {
  const DoubleInput({
    Key? key,
    required this.minController,
    required this.maxController,
    required this.padding,
    required this.dividerPadding,
    this.enabled = true,
    this.isDense = true,
    required this.divider,
    this.minHintText,
    this.maxHintText,
    this.hintStyle,
    this.textStyle,
    required this.fillColor,
    required this.boxConstraints,
  }) : super(key: key);

  final TextEditingController minController;
  final TextEditingController maxController;
  final EdgeInsets padding;
  final EdgeInsets dividerPadding;
  final bool enabled;
  final bool isDense;
  final SizedBox divider;
  final TextStyle? textStyle;
  final String? minHintText;
  final String? maxHintText;
  final TextStyle? hintStyle;
  final Color fillColor;
  final BoxConstraints boxConstraints;

  @override
  State<DoubleInput> createState() => _DoubleInputState();
}

class _DoubleInputState extends State<DoubleInput> {
  double _startValue = 10;
  double _endValue = 200;
  final double _minValue = 0;
  final double _maxValue = 1000;

  @override
  void initState() {
    super.initState();
    widget.minController.text = _startValue.toStringAsFixed(0);
    widget.maxController.text = _endValue.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    final themeCore = ThemeCore.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeCore.of(context).color.scheme.overlaySecondary,
            ),
            borderRadius: BorderRadius.circular(
              themeCore.radius.medium,
            ),
            color: widget.fillColor,
          ),
          child: Padding(
            padding: widget.padding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InputPrice(
                    controller: widget.minController,
                    isDense: widget.isDense,
                    onChanged: (value) {
                      setState(() {
                        _startValue = double.tryParse(value) ?? _minValue;
                        _startValue = _startValue.clamp(_minValue, _maxValue);
                        widget.minController.text =
                            _startValue.toStringAsFixed(0);
                        if (_startValue > _endValue) {
                          _endValue = _startValue;
                          widget.maxController.text =
                              _endValue.toStringAsFixed(0);
                        }
                      });
                    },
                    enabled: widget.enabled,
                    textAlign: TextAlign.start,
                    style: widget.textStyle,
                    boxConstraints: widget.boxConstraints,
                    hintStyle: widget.hintStyle,
                    hintText: widget.minHintText,
                  ),
                ),
                Padding(
                  padding: widget.dividerPadding,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(themeCore.radius.small),
                      color: ThemeCore.of(context).color.scheme.strokePrimary,
                    ),
                    child: widget.divider,
                  ),
                ),
                Expanded(
                  child: InputPrice(
                    controller: widget.maxController,
                    isDense: widget.isDense,
                    onChanged: (value) {
                      setState(() {
                        _endValue = double.tryParse(value) ?? _maxValue;
                        _endValue = _endValue.clamp(_minValue, _maxValue);
                        widget.maxController.text =
                            _endValue.toStringAsFixed(0);
                        if (_endValue < _startValue) {
                          _startValue = _endValue;
                          widget.minController.text =
                              _startValue.toStringAsFixed(0);
                        }
                      });
                    },
                    enabled: widget.enabled,
                    hintText: widget.maxHintText,
                    hintStyle: widget.hintStyle,
                    textAlign: TextAlign.end,
                    style: widget.textStyle,
                    boxConstraints: widget.boxConstraints,
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: widget.enabled,
          child: RangeSlider(
            values: RangeValues(_startValue, _endValue),
            min: _minValue,
            max: _maxValue,
            onChanged: (RangeValues values) {
              setState(() {
                _startValue = values.start.toDouble();
                _endValue = values.end.toDouble();
                widget.minController.text =
                    values.start.toInt().toStringAsFixed(0);
                widget.maxController.text =
                    values.end.toInt().toStringAsFixed(0);
              });
            },
          ),
        ),
      ],
    );
  }
}

class InputPrice extends StatelessWidget {
  const InputPrice(
      {super.key,
      required this.controller,
      required this.enabled,
      required this.isDense,
      this.boxConstraints,
      this.onChanged,
      this.style,
      this.hintText,
      required this.textAlign,
      this.hintStyle});

  final TextEditingController controller;
  final Function(String)? onChanged;
  final TextStyle? style;
  final bool enabled;
  final bool isDense;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextAlign textAlign;
  final BoxConstraints? boxConstraints;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: style,
      textAlign: textAlign,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(4),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: hintStyle,
        isDense: isDense,
        enabled: enabled,
        filled: !enabled,
        fillColor: !enabled
            ? ThemeCore.of(context).color.scheme.overlaySecondary
            : null,
        border: InputBorder.none,
        suffix: Icon(
          ToptomIcons.error_stroke,
          size: 13.33,
          color: ThemeCore.of(context).color.scheme.textSecondary,
        ),
        labelStyle: ThemeCore.of(context).typography.paragraphMedium.copyWith(
              color: ThemeCore.of(context).color.scheme.textPrimary,
            ),
        suffixIconConstraints: boxConstraints,
      ),
    );
  }
}
