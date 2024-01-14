import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the generated directories variable
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(

      directories: directories,
      addons: [
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData.light().copyWith(
                scaffoldBackgroundColor: Colors.white,
                bottomSheetTheme: const BottomSheetThemeData(surfaceTintColor: Colors.white),
                appBarTheme: const AppBarTheme(surfaceTintColor: Colors.white),
                textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme).copyWith(
                    bodyMedium: const TextStyle( letterSpacing: 0, color: Colors.black)
                ),
                colorScheme: const ColorScheme.light().copyWith(
                  surfaceTint: Colors.transparent,
                  primary: const Color.fromRGBO(250, 77, 30, 1),
                  secondary: const Color.fromRGBO(122, 130, 152, 1),
                  secondaryContainer: const Color.fromRGBO(243, 244, 245, 1),
                  onPrimary: Colors.white,
                )
              ),
            ),
          ],
          themeBuilder: (context, theme, child) {
            return Theme(
              data: theme,
              child: child,
            );
          },
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPad,
            Devices.ios.iPhone13,
          ],
        ),
      ],
    );
  }
}