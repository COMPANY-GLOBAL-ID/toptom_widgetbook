import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            const Text("Buttons",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
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
                        onPressed: () {},
                        prefixIcon: const Icon(ToptomIcons.clip_icon),
                        suffixIcon: const Icon(ToptomIcons.clip_icon),
                        child: Text('Button label'),
                      ),
                      const SizedBox(height: 10),
                      ButtonDefault.defaultL(
                        title: 'Button label',
                        onPressed: () {},
                        prefixIcon: const Icon(ToptomIcons.clip_icon),
                        suffixIcon: const Icon(ToptomIcons.clip_icon),
                      ),
                      const SizedBox(height: 10),
                      ButtonDefault.defaultM(
                        title: 'Button label',
                        onPressed: () {},
                        prefixIcon: const Icon(ToptomIcons.clip_icon),
                        suffixIcon: const Icon(ToptomIcons.clip_icon),
                      ),
                      const SizedBox(height: 10),
                      ButtonDefault.defaultS(
                        title: 'Button label',
                        onPressed: () {},
                        prefixIcon: const Icon(ToptomIcons.clip_icon),
                        suffixIcon: const Icon(ToptomIcons.clip_icon),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ButtonIcon.l(
                        icon: ToptomIcons.cross,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonIcon.m(
                        icon: ToptomIcons.cross,
                        onPressed: () {},
                      ),
                      const SizedBox(height: 10),
                      ButtonIcon.s(
                        icon: ToptomIcons.cross,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ));
  }
}
