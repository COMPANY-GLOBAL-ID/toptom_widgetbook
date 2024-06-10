import 'package:example/core/themes.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';
import 'package:widgetbook/widgetbook.dart';

import 'core/directories.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher(
      child: Widgetbook.material(
        addons: [
          DeviceFrameAddon(
            devices: [
              Devices.ios.iPad,
              Devices.ios.iPhone12Mini,
              Devices.android.mediumPhone,
              Devices.android.largeTablet,
            ],
          )
        ],
        directories: directories,
      ),
    );
  }
}
