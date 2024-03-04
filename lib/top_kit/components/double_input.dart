import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class DoubleInput extends StatefulWidget {
  const DoubleInput({
    Key? key,
    required this.minController,
    required this.maxController,
    required this.padding,
    required this.dividerPadding,
    required this.enabled,
    required this.isDense,
    required this.divider,
    required this.minHintText,
    required this.maxHintText,
    required this.hintStyle,
    required this.textStyle,
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

  factory DoubleInput.sizeXl({
    required TextEditingController minController,
    required TextEditingController maxController,
    required bool enabled,
    String? minHintText,
    String? maxHintText,
  }) {
    Color currentFillColor = Colors.transparent;
    if (enabled != true) {
      currentFillColor = ColorKit.colorOverlaySecondary;
    }
    return DoubleInput(
      fillColor: currentFillColor,
      enabled: enabled,
      textStyle:
          TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary),
      hintStyle:
          TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextSecondary),
      minHintText: minHintText,
      maxHintText: maxHintText,
      isDense: false,
      minController: minController,
      maxController: maxController,
      boxConstraints: const BoxConstraints(minHeight: 24, minWidth: 12),
      padding: const EdgeInsets.all(12),
      divider: const SizedBox(
        height: 32,
        width: 2,
      ),
      dividerPadding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }

  factory DoubleInput.sizeL({
    required TextEditingController minController,
    required TextEditingController maxController,
    required bool enabled,
    String? minHintText,
    String? maxHintText,
  }) {
    Color currentFillColor = Colors.transparent;
    if (enabled != true) {
      currentFillColor = ColorKit.colorOverlaySecondary;
    }
    return DoubleInput(
      fillColor: currentFillColor,
      textStyle:
          TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary),
      minHintText: minHintText,
      maxHintText: maxHintText,
      hintStyle:
          TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextSecondary),
      enabled: enabled,
      isDense: false,
      boxConstraints: const BoxConstraints(minHeight: 24, minWidth: 12),
      minController: minController,
      maxController: maxController,
      padding: const EdgeInsets.all(8),
      divider: const SizedBox(
        height: 32,
        width: 2,
      ),
      dividerPadding: const EdgeInsets.symmetric(horizontal: 12),
    );
  }

  factory DoubleInput.sizeS({
    required TextEditingController minController,
    required TextEditingController maxController,
    required bool enabled,
    String? minHintText,
    String? maxHintText,
  }) {
    Color currentFillColor = Colors.transparent;
    if (enabled != true) {
      currentFillColor = ColorKit.colorOverlaySecondary;
    }
    return DoubleInput(
      fillColor: currentFillColor,
      textStyle:
          TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary),
      minHintText: minHintText,
      maxHintText: maxHintText,
      hintStyle:
          TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextSecondary),
      enabled: enabled,
      isDense: true,
      boxConstraints: const BoxConstraints(minHeight: 16, minWidth: 12),
      minController: minController,
      maxController: maxController,
      padding: const EdgeInsets.all(4),
      divider: const SizedBox(
        height: 16,
        width: 2,
      ),
      dividerPadding: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: ColorKit.colorOverlaySecondary),
            borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
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
                          BorderRadius.circular(RadiusType.rdS.radius),
                      color: ColorKit.colorStrokePrimary,
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
        if (widget.enabled == true)
          RangeSlider(
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
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
        border: InputBorder.none,
        suffix: SvgPicture.asset(IconsKit.tenge),
        labelStyle: TextStylesKit.buttonXl.copyWith(
          color: ColorKit.colorTextPrimary,
        ),
        suffixIconConstraints: boxConstraints,
      ),
    );
  }
}
