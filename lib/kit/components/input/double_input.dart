import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class DoubleInput extends StatefulWidget {
  final DoubleEditingController controller;

  const DoubleInput({
    super.key,
    this.dividerPadding,
    this.enabled = true,
    this.isDense = true,
    this.divider,
    this.minHintText,
    this.maxHintText,
    this.hintStyle,
    this.textStyle,
    this.fillColor,
    this.boxConstraints,
    this.label,
    this.clearText,
    this.errorText,
    required this.controller,
    required this.max,
    required this.min,
  });

  final bool enabled;
  final bool isDense;
  final EdgeInsets? dividerPadding;
  final SizedBox? divider;
  final TextStyle? textStyle;
  final String? minHintText;
  final String? maxHintText;
  final TextStyle? hintStyle;
  final Color? fillColor;
  final BoxConstraints? boxConstraints;
  final String? label;
  final String? clearText;
  final String? errorText;

  final double max;
  final double min;

  @override
  State<DoubleInput> createState() => _DoubleInputState();
}

class _DoubleInputState extends State<DoubleInput> {
  late TextEditingController minController;
  late TextEditingController maxController;
  final FocusNode _minFocus = FocusNode();
  final FocusNode _maxFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    minController = TextEditingController(
        text: widget.controller.value.min?.toStringAsFixed(0) ?? widget.min.toStringAsFixed(0))
      ..addListener(_listenMin);
    maxController = TextEditingController(
        text: widget.controller.value.max?.toStringAsFixed(0) ?? widget.max.toStringAsFixed(0))
      ..addListener(_listenMax);
    widget.controller.change(min: widget.min, max: widget.max);
  }

  _listenMin() {
    final int selectionStart = minController.selection.start;
    final int selectionEnd = minController.selection.end;

    final minString = minController.text;
    final maxString = maxController.text;

    double minDouble = double.tryParse(minString) ?? widget.min;
    double maxDouble = double.tryParse(maxString) ?? widget.max;

    minDouble = minDouble.clamp(widget.min, widget.max);
    minController.value = minController.value.copyWith(
      text: minDouble.toStringAsFixed(0),
      selection: TextSelection(
        baseOffset: selectionStart,
        extentOffset: selectionEnd,
      ),
      composing: TextRange.empty,
    );
    widget.controller.change(min: minDouble);
    if (minDouble > maxDouble) {
      maxDouble = minDouble;
      maxController.text = maxDouble.toStringAsFixed(0);
      widget.controller.change(max: maxDouble);
    }
  }

  _listenMax() {
    final int selectionStart = maxController.selection.start;
    final int selectionEnd = maxController.selection.end;

    final minString = minController.text;
    final maxString = maxController.text;

    double minDouble = double.tryParse(minString) ?? widget.min;
    double maxDouble = double.tryParse(maxString) ?? widget.max;

    maxDouble = maxDouble.clamp(widget.min, widget.max);
    maxController.value = maxController.value.copyWith(
      text: maxDouble.toStringAsFixed(0),
      selection: TextSelection(
        baseOffset: selectionStart,
        extentOffset: selectionEnd,
      ),
      composing: TextRange.empty,
    );
    widget.controller.change(max: maxDouble);
    if (maxDouble < minDouble) {
      minDouble = maxDouble;
      minController.text = minDouble.toStringAsFixed(0);
      widget.controller.change(min: minDouble);
    }
  }

  _changeRange(RangeValues values) {
    minController.text = values.start.toDouble().toStringAsFixed(0);
    maxController.text = values.end.toInt().toStringAsFixed(0);
    // trying it
    widget.controller.change(min: values.start.toDouble(), max: values.end.toDouble());
  }

  _clearAll() {
    widget.controller.change(min: widget.min, max: widget.max);
    minController.text = widget.min.toStringAsFixed(0);
    maxController.text = widget.max.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    final themeCore = ThemeCore.of(context);
    bool hasLabel = widget.label != null && widget.label?.isNotEmpty == true;
    bool hasClearText =
        widget.clearText != null && widget.clearText?.isNotEmpty == true;
    bool hasLabelOrClearText = hasLabel || hasClearText;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DefaultTextStyle(
          style: themeCore.typography.paragraphSmall.copyWith(
            color: themeCore.color.scheme.textSecondary,
            fontWeight: FontWeight.w500,
          ),
          child: Visibility(
            visible: hasLabelOrClearText,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Visibility(
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: hasLabel,
                      child: Text(
                        widget.label ?? '',
                      ),
                    ),
                    Visibility(
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      visible: hasClearText,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: _clearAll,
                        child: Text(widget.clearText ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: themeCore.color.scheme.main,
                            )),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFieldWidget.number(
                controller: minController,
                isDense: widget.isDense,
                enabled: widget.enabled,
                hintStyle: widget.hintStyle,
                hintText: widget.minHintText,
                focusNode: _minFocus,
                errorText: widget.errorText,
              ),
            ),
            Padding(
              padding: widget.dividerPadding ??
                  const EdgeInsets.symmetric(horizontal: 12),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(themeCore.radius.small),
                  color: themeCore.color.scheme.strokePrimary,
                ),
                child: widget.divider,
              ),
            ),
            Expanded(
              child: TextFieldWidget.number(
                controller: maxController,
                isDense: widget.isDense,
                enabled: widget.enabled,
                hintText: widget.maxHintText,
                hintStyle: widget.hintStyle,
                focusNode: _maxFocus,
                errorText: widget.errorText,
              ),
            ),
          ],
        ),
        ValueListenableBuilder(
          valueListenable: widget.controller,
          builder: (context, value, child) {
            return Visibility(
              visible: widget.enabled,
              child: RangeSlider(
                  activeColor: themeCore.color.scheme.main,
                  values: RangeValues(
                      value.min ?? widget.min, value.max ?? widget.max),
                  min: widget.min,
                  max: widget.max,
                  onChanged: _changeRange),
            );
          },
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

class DoubleEditingController extends ValueNotifier<DoubleValue> {
  DoubleEditingController({DoubleValue? value}) : super(value ?? DoubleValue());

  void change({double? min, double? max}) {
    value.min = min ?? value.min;
    value.max = max ?? value.max;
    notifyListeners();
  }

  void clear() {
    value = DoubleValue();
    notifyListeners();
  }
}

class DoubleValue {
  double? min;
  double? max;

  DoubleValue({
    this.min,
    this.max,
  });
}
