import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class SelectorModalBottomSheetWidget<T> extends StatelessWidget {
  final SelectorModalBottomSheetOptions<T> options;

  const SelectorModalBottomSheetWidget({
    super.key,
    required this.options,
  });

  _cancel(BuildContext context) => () {
        Navigator.of(context).pop();
      };

  _confirmSelection(BuildContext context) => () {
        if (options.temporaryValue.value != null) {
          options.controller.change(options.temporaryValue.value);
          Navigator.of(context).pop();
        }
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
                options.title,
                style: ThemeCore.of(context).typography.paragraphMedium,
              ),
              options.showCancelButton == true &&
                      options.clearButtonText != null
                  ? IconButton(
                      onPressed: _cancel(context),
                      icon: const Icon(Icons.close),
                    )
                  : TextButton(
                      onPressed: options.controller.clear,
                      child: Text(options.clearButtonText ?? ''),
                    ),
            ],
          ),
          SizedBox(
            height: ThemeCore.of(context).padding.l,
          ),
          ValueListenableBuilder<T?>(
            valueListenable: options.temporaryValue,
            builder: (context, value, child) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: options.values.length,
                itemBuilder: (context, index) => options.builder!(
                  context,
                  options.values[index],
                  value,
                  (val) => options.temporaryValue.value = val,
                ),
              );
            },
          ),
          SizedBox(
            height: ThemeCore.of(context).padding.l,
          ),
          options.showButton == true && options.buttonText != null
              ? SafeArea(
                  child: SizedBox(
                    width: double.infinity,
                    child: ButtonWidget(
                      onPressed: _confirmSelection(context),
                      child: Text(
                        options.buttonText!,
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
