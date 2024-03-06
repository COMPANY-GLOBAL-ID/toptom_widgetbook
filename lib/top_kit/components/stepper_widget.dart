import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class StepperWidget extends StatefulWidget {
  final ColorFilter minusColor;
  final ColorFilter plusColor;

  const StepperWidget({
    Key? key,
    ColorFilter? minusColor,
    ColorFilter? plusColor,
  }) :
        minusColor = minusColor ??  const ColorFilter.mode(ColorKit.colorTextPrimary, BlendMode.srcIn),
        plusColor = plusColor ??  const ColorFilter.mode(ColorKit.colorTextPrimary, BlendMode.srcIn),
        super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();

}

class _StepperWidgetState extends State<StepperWidget> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
          color: ColorKit.colorBackgroundSecondary
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: SvgPicture.asset(IconsKit.minus,colorFilter: widget.minusColor,),
              onPressed: (){
                _decrementCounter();
              }
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$_counter',
                style: TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary),
              ),
            ),
            IconButton(
              icon: SvgPicture.asset(IconsKit.plus,colorFilter: widget.plusColor,),
              onPressed: () {
                _incrementCounter();
              },
            ),
          ],
        ),
      ),
    );
  }
}