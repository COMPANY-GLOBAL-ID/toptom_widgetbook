import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toptom_theme/toptom_theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppColor(
      colorScheme: AppColorScheme(
          success: Color.fromRGBO(25, 175, 102, 1),
          onSuccess: Colors.white,
          warning: Color.fromRGBO(248, 191, 0, 1),
          onWarning: Colors.white,
          standard: Color.fromRGBO(35, 31, 32, 1),
          onStandard: Colors.white,
          error: Color.fromRGBO(243, 87, 70, 1),
          onError: Colors.white,
          shadow: Colors.grey.shade300
      ),
      child: Widgetbook.material(
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
                    onPrimary: const Color.fromRGBO(15, 14, 20, 1),
                    secondary: const Color.fromRGBO(246, 246, 248, 1),
                    secondaryContainer: const Color.fromRGBO(245, 246, 248, 1),
                    error: const Color.fromRGBO(243, 87, 70, 1),
                    onError: const Color.fromRGBO(243, 195, 195, 1),
                  )
                ),
              ),
              WidgetbookTheme(
                name: 'Dark',
                data: ThemeData.dark().copyWith(
                    scaffoldBackgroundColor: Colors.black45,
                    bottomSheetTheme: const BottomSheetThemeData(surfaceTintColor: Colors.black45),
                    appBarTheme: const AppBarTheme(surfaceTintColor: Colors.black45),
                    textTheme: GoogleFonts.notoSansTextTheme(Theme.of(context).textTheme).copyWith(
                        bodyMedium: const TextStyle( letterSpacing: 0, color: Colors.black45)
                    ),
                    colorScheme: const ColorScheme.light().copyWith(
                      surfaceTint: Colors.transparent,
                      primary: const Color.fromRGBO(250, 77, 30, 1),
                      onPrimary: const Color.fromRGBO(15, 14, 20, 1),
                      secondary: const Color.fromRGBO(246, 246, 248, 1),
                      secondaryContainer: const Color.fromRGBO(245, 246, 248, 1),
                      error: const Color.fromRGBO(250, 30, 30, 1),
                      errorContainer: const Color.fromRGBO(243, 195, 195, 1),
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
      ),
    );
  }
}