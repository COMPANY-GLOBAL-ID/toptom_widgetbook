import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class DoubleInput extends StatefulWidget {
  const DoubleInput({
    Key? key,
    required this.minController,
    required this.maxController,
  }) : super(key: key);

  final TextEditingController minController;
  final TextEditingController maxController;

  @override
  State<DoubleInput> createState() => _DoubleInputState();
}

class _DoubleInputState extends State<DoubleInput> {
  double _minPrice = 0; // Минимальная цена
  double _maxPrice = 100; // Максимальная цена

  TextEditingController _minPriceController = TextEditingController();
  TextEditingController _maxPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: ColorKit.colorStrokePrimary),
            borderRadius: BorderRadius.circular(ConstantsKit.rdXl),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: _InputPrice(
                    contoroller: widget.minController,
                    onChanged: (value) {
                      setState(() {
                        _minPrice = double.tryParse(value) ?? _minPrice;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ConstantsKit.rdS),
                      color: ColorKit.colorStrokePrimary,
                    ),
                    child: const SizedBox(
                      width: 2,
                      height: 32,
                    ),
                  ),
                ),
                Expanded(
                  child: _InputPrice(
                    contoroller: widget.maxController,
                    onChanged: (value) {
                      setState(() {
                        _minPrice = double.tryParse(value) ?? _minPrice;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        RangeSlider(
          values: RangeValues(_minPrice, _maxPrice),
          min: 0,
          max: 1000,
          onChanged: (RangeValues values) {
            setState(() {
              _minPrice = values.start;
              _maxPrice = values.end;
              _minPriceController.text = _minPrice.toString();
              _maxPriceController.text = _maxPrice.toString();
            });
          },
        ),
      ],
    );
  }
}

class _InputPrice extends StatelessWidget {
  const _InputPrice({
    required this.contoroller,
    this.onChanged,
  });

  final TextEditingController contoroller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: contoroller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        suffix: SvgPicture.asset(IconsKit.tenge),
        labelStyle: TextStylesKit.buttonXl.copyWith(
          color: ColorKit.colorTextPrimary,
        ),
      ),
    );
  }
}
