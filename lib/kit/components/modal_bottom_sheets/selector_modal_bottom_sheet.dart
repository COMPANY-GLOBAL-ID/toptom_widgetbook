
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class SelectorModalBottomSheetWidget<T> extends StatelessWidget {
  final SelectorController<T?> selectorController;
  final String title;
  final Widget Function(BuildContext context, T? value) builder;
  final bool showButton;
  final VoidCallback? onPressed;
  final VoidCallback? clearFunction;
  final String? buttonText;
  final String? textButton;
  final bool ?showCancelButton;
  const SelectorModalBottomSheetWidget({
    super.key,
    required this.selectorController,
    required this.title,
    required this.builder,
     this.textButton,
    this.showButton = false,
    this.showCancelButton = false,
    this.onPressed,
    this.buttonText,
    this.clearFunction,
  });


  _cancel(BuildContext context) => () {
        Navigator.of(context).pop();
      };

  _back(BuildContext context) => () {
        if (onPressed != null) {
          onPressed!();
        }
        Navigator.of(context).pop();
      };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ThemeCore.of(context).padding.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: ThemeCore.of(context).typography.paragraphMedium,
              ),
              showCancelButton == true&&textButton!=null
                  ? IconButton(
                      onPressed: _cancel(context),
                      icon: const Icon(Icons.close),
                    )
                  : TextButton(
                      onPressed: clearFunction,
                      child: Text(textButton!),
                    ),
            ],
          ),
          SizedBox(
            height: ThemeCore.of(context).padding.l,
          ),
          ValueListenableBuilder<T?>(
            valueListenable: selectorController,
            builder: (context, value, child) {
              return builder(context, value);
            },
          ),
          SizedBox(
            height: ThemeCore.of(context).padding.l,
          ),
          showButton == true && buttonText != null
              ? SafeArea(
                  child: SizedBox(
                    width: double.infinity,
                    child: ButtonWidget(
                      onPressed: _back(context),
                      child: Text(
                        buttonText!,
                        style: ThemeCore.of(context)
                            .typography
                            .paragraphSmall
                            .copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
