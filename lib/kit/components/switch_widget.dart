import 'package:flutter/material.dart';


class SwitchWidget extends StatelessWidget {
  final double? scale;
  final bool switchValue;
  final ValueChanged<bool>? onChanged;
  const SwitchWidget({
    super.key,
    this.scale = 1,
    required this.switchValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    // Color finalActiveTrackColor =
    //     onChanged != null ? ColorKit.colorMain : ColorKit.disabledTrackSwitch;
    //
    // Color finalActiveColor =
    //     onChanged != null ? ColorKit.colorWhite : ColorKit.colorOverlayPrimary;
    //
    // Color finalInactiveTrackColor = onChanged != null
    //     ? ColorKit.colorStrokePrimary
    //     : ColorKit.disabledTrackColor;

    return Transform.scale(
      scale: scale,
      child: Switch(
        // activeColor: finalActiveColor,
        // activeTrackColor: finalActiveTrackColor,
        // inactiveTrackColor: finalInactiveTrackColor,
        // inactiveThumbColor: finalActiveColor,
        value: switchValue,
        onChanged: onChanged,
      ),
    );
  }
}
