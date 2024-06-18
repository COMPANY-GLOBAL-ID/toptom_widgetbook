import 'package:example/helper/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class ShadowScreen extends StatelessWidget {
  const ShadowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Colors.grey.withOpacity(0.2);
    return ScreenWidget(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Shadow bottom"),
                _ShadowWidget(
                  title: "Small",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowBottomSmall.offset,
                    blurRadius: ConstantsKit.shadowBottomSmall.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "Medium",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowBottomMedium.offset,
                    blurRadius: ConstantsKit.shadowBottomMedium.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "Large",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowBottomLarge.offset,
                    blurRadius: ConstantsKit.shadowBottomLarge.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "XLarge",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowBottomXLarge.offset,
                    blurRadius: ConstantsKit.shadowBottomXLarge.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "Controls",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowBottomControls.offset,
                    blurRadius: ConstantsKit.shadowBottomControls.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Shadow top"),
                _ShadowWidget(
                  title: "Small",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowTopSmall.offset,
                    blurRadius: ConstantsKit.shadowTopSmall.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "Medium",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowTopMedium.offset,
                    blurRadius: ConstantsKit.shadowTopMedium.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "Large",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowTopLarge.offset,
                    blurRadius: ConstantsKit.shadowTopLarge.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "XLarge",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowTopXLarge.offset,
                    blurRadius: ConstantsKit.shadowTopXLarge.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                _ShadowWidget(
                  title: "Controls",
                  shadow: BoxShadow(
                    offset: ConstantsKit.shadowTopControls.offset,
                    blurRadius: ConstantsKit.shadowTopControls.blurRadius,
                    color: shadowColor,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class _ShadowWidget extends StatelessWidget {
  const _ShadowWidget({
    required this.title,
    required this.shadow,
  });
  final String title;
  final BoxShadow shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 140,
      decoration: BoxDecoration(
        // color: ColorKit.boxBackgroundGrey,
        boxShadow: [shadow],
        borderRadius:
            BorderRadius.circular(ThemeCore.of(context).radius.extraLarge),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
