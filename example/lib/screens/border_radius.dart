import 'package:flutter/cupertino.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';

class BorderRadiusScreen extends StatelessWidget {
  const BorderRadiusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Border radius", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ...RadiusType.values.map((e) {
            return Column(
              children: [
                _BorderRadiusWidget(
                  radius: e.radius,
                  title: e.toString(),
                ),
                const SizedBox(height: 10),
              ],
            );
          }),
        ],
      ),
    );
  }
}




class _BorderRadiusWidget extends StatelessWidget {
  const _BorderRadiusWidget({
    required this.radius,
    required this.title,
  });

  final String title;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorKit.boxBackgroundGrey,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: ColorKit.boxBorderGrey, width: 1),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
