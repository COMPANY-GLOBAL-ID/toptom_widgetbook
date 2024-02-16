import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/border_radius_widget.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_accept.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_black.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_default.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_ghost.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_icon.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_outline.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/icons_kit.dart';
import 'package:toptom_widgetbook/top_kit/theme_kit/core_theme.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CoreTheme.coreTheme,
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            //TODO() Add avatar

            //Border-radius
            const Text('Border-radius'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rd(),
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rdLg(),
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rdXl(),
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rd2Xl(),
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rd3Xl(),
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rd4Xl(),
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rd5Xl(),
                  const SizedBox(width: 10),
                  BorderRadiusWidget.rd6Xl(),
                ],
              ),
            ),

            //TODO() Add breadcrumb

            //
            const Text('Buttons'),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonAccept.acceptXl(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonAccept.acceptL(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonAccept.asseptM(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      ButtonAccept.asseptM(
                        title: 'Button label',
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonBlack.acceptXl(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonBlack.acceptL(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonBlack.asseptM(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      ButtonBlack.asseptM(
                        title: 'Button label',
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonOutline.outlineXl(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonOutline.outlineL(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonOutline.outlineM(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonOutline.outlineM(
                        title: 'Button label',
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonGhost.ghostXl(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonGhost.ghostL(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonGhost.ghostM(
                        title: 'Button label',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonGhost.ghostM(
                        title: 'Button label',
                        onPressed: null,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonDefault.defaultXl(
                        title: 'Button label',
                        onPressed: () {},
                        prefixIcon: IconsKit.clipIcon,
                        suffixIcon: IconsKit.clipIcon,
                      ),
                      const SizedBox(height: 10),
                      ButtonDefault.defaultL(
                        title: 'Button label',
                        onPressed: () {},
                        prefixIcon: IconsKit.clipIcon,
                        suffixIcon: IconsKit.clipIcon,
                      ),
                      const SizedBox(height: 10),
                      ButtonDefault.defaultM(
                        title: 'Button label',
                        onPressed: () {},
                        prefixIcon: IconsKit.clipIcon,
                        suffixIcon: IconsKit.clipIcon,
                      ),
                      const SizedBox(height: 10),
                      ButtonDefault.defaultS(
                        title: 'Button label',
                        onPressed: () {},
                        prefixIcon: IconsKit.clipIcon,
                        suffixIcon: IconsKit.clipIcon,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonIcon.l(
                        assetName: IconsKit.clipIcon,
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
