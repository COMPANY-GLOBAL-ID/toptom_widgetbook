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
    this.inputBorder,
    this.maxEnterLength,
    required this.controller,
    required this.max,
    required this.min,
    this.contentPadding,
    this.useDecoratedBox =
        true, // Новый параметр для использования DecoratedBox
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
  final int? maxEnterLength;
  final InputBorder? inputBorder;
  final double? contentPadding;

  final double max;
  final double min;
  final bool useDecoratedBox; // Новый параметр для использования DecoratedBox

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
      text: widget.controller.value.min?.toStringAsFixed(0) ??
          widget.min.toStringAsFixed(0),
    )..addListener(_listenMin);
    maxController = TextEditingController(
      text: widget.controller.value.max?.toStringAsFixed(0) ??
          widget.max.toStringAsFixed(0),
    )..addListener(_listenMax);
  }

  @override
  void didUpdateWidget(covariant DoubleInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller.value.min != double.tryParse(minController.text) ||
        widget.controller.value.max != double.tryParse(maxController.text)) {
      minController.text = widget.controller.value.min?.toStringAsFixed(0) ??
          widget.min.toStringAsFixed(0);
      maxController.text = widget.controller.value.max?.toStringAsFixed(0) ??
          widget.max.toStringAsFixed(0);
    }
  }

  void _listenMin() {
    double? minDouble = double.tryParse(minController.text);
    if (minDouble != null) {
      if (minDouble > widget.max) {
        minDouble = widget.max;
        minController.text = minDouble.toStringAsFixed(0);
      }
      minDouble = minDouble.clamp(widget.min, widget.max);
      widget.controller.change(min: minDouble);
      if (minDouble > (widget.controller.value.max ?? widget.max)) {
        maxController.text = minDouble.toStringAsFixed(0);
        widget.controller.change(max: minDouble);
      }
    }
  }

  void _listenMax() {
    double? maxDouble = double.tryParse(maxController.text);
    if (maxDouble != null) {
      if (maxDouble > widget.max) {
        maxDouble = widget.max;
        maxController.text = maxDouble.toStringAsFixed(0);
      }
      maxDouble = maxDouble.clamp(widget.min, widget.max);
      widget.controller.change(max: maxDouble);
      if (maxDouble < (widget.controller.value.min ?? widget.min)) {
        minController.text = maxDouble.toStringAsFixed(0);
        widget.controller.change(min: maxDouble);
      }
    }
  }

  void _changeRange(RangeValues values) {
    minController.text = values.start.toStringAsFixed(0);
    maxController.text = values.end.toStringAsFixed(0);
    widget.controller.change(min: values.start, max: values.end);
  }

  void _clearAll() {
    minController.text = widget.min.toStringAsFixed(0);
    maxController.text = widget.max.toStringAsFixed(0);
    widget.controller.change(min: widget.min, max: widget.max);
  }

  @override
  Widget build(BuildContext context) {
    final themeCore = ThemeCore.of(context);
    bool hasLabel = widget.label != null && widget.label?.isNotEmpty == true;
    bool hasClearText =
        widget.clearText != null && widget.clearText?.isNotEmpty == true;
    bool hasLabelOrClearText = hasLabel || hasClearText;

    Widget content = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFieldWidget.number(
              filled: true,
              fillColor: widget.fillColor,
              controller: minController,
              isDense: widget.isDense,
              enabled: widget.enabled,
              hintStyle: widget.hintStyle,
              hintText: widget.minHintText,
              focusNode: _minFocus,
              contentPadding: widget.contentPadding,
              errorText: widget.errorText,
              inputBorder: widget.inputBorder,
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
              filled: true,
              textAlign: TextAlign.end,
              fillColor: widget.fillColor,
              controller: maxController,
              isDense: widget.isDense,
              enabled: widget.enabled,
              hintText: widget.maxHintText,
              hintStyle: widget.hintStyle,
              contentPadding: widget.contentPadding,
              focusNode: _maxFocus,
              errorText: widget.errorText,
              inputBorder: widget.inputBorder,
            ),
          ),
        ],
      ),
    );

    if (widget.useDecoratedBox) {
      content = DecoratedBox(
        decoration: BoxDecoration(
          color: themeCore.color.scheme.backgroundSecondary,
          borderRadius: BorderRadius.circular(themeCore.radius.extraLarge2),
        ),
        child: content,
      );
    }

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
                        child: Text(
                          widget.clearText ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: themeCore.color.scheme.main,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
        content,
        ValueListenableBuilder<DoubleValue>(
          valueListenable: widget.controller,
          builder: (context, value, child) {
            return Visibility(
              visible: widget.enabled,
              child: RangeSlider(
                activeColor: themeCore.color.scheme.main,
                values: RangeValues(
                  value.min ?? widget.min,
                  value.max ?? widget.max,
                ),
                min: widget.min,
                max: widget.max,
                onChanged: _changeRange,
              ),
            );
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class DoubleEditingController extends ValueNotifier<DoubleValue> {
  DoubleEditingController({DoubleValue? value}) : super(value ?? DoubleValue());

  void change({double? min, double? max}) {
    value = DoubleValue(
      min: min ?? value.min,
      max: max ?? value.max,
    );
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
