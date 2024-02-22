import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/components_export.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit_export.dart';


class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text("Border radius"),
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
                      assetName: IconsKit.cross,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.m(
                      assetName: IconsKit.cross,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.s(
                      assetName: IconsKit.cross,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      )
    );
  }
}
