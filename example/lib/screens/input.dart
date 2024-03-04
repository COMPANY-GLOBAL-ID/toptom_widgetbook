import 'package:flutter/cupertino.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController1 =
        TextEditingController();
    final TextEditingController textEditingController2 =
        TextEditingController();
    final TextEditingController textEditingController3 =
        TextEditingController();
    final TextEditingController textEditingController4 =
        TextEditingController();
    final TextEditingController textEditingController5 =
        TextEditingController();
    final TextEditingController textEditingController6 =
        TextEditingController();
    final TextEditingController textEditingController7 =
        TextEditingController();
    final TextEditingController textEditingController8 =
        TextEditingController();
    final TextEditingController textEditingController9 =
        TextEditingController();
    final TextEditingController textEditingController10 =
        TextEditingController();
    final TextEditingController textEditingController11 =
        TextEditingController();
    final TextEditingController textEditingController12 =
        TextEditingController();
    final TextEditingController textEditingController13 =
        TextEditingController();
    final TextEditingController textEditingController14 =
        TextEditingController();
    final TextEditingController textEditingController15 =
        TextEditingController();
    final TextEditingController textEditingController16 =
        TextEditingController();
    final TextEditingController textEditingController17 =
        TextEditingController();
    final TextEditingController textEditingController18 =
        TextEditingController();
    final TextEditingController textEditingController19 =
        TextEditingController();
    final TextEditingController textEditingController20 =
        TextEditingController();
    final TextEditingController textEditingController21 =
        TextEditingController();
    final TextEditingController textEditingController22 =
        TextEditingController();
    final TextEditingController textEditingController23 =
        TextEditingController();
    final TextEditingController textEditingController24 =
        TextEditingController();
    final TextEditingController textEditingController25 =
        TextEditingController();
    final TextEditingController textEditingController26 =
        TextEditingController();
    final TextEditingController textEditingController27 =
        TextEditingController();
    final TextEditingController textEditingController28 =
        TextEditingController();
    final TextEditingController textEditingController29 =
        TextEditingController();
    final TextEditingController textEditingController30 =
        TextEditingController();
    final TextEditingController textEditingController31 =
        TextEditingController();
    final TextEditingController textEditingController32 =
        TextEditingController();
    final TextEditingController textEditingController33 =
        TextEditingController();
    final TextEditingController textEditingController34 =
        TextEditingController();
    final TextEditingController textEditingController35 =
        TextEditingController();
    final TextEditingController textEditingController36 =
        TextEditingController();
    final TextEditingController textEditingController37 =
        TextEditingController();
    final TextEditingController textEditingController38 =
        TextEditingController();
    final TextEditingController textEditingController39 =
        TextEditingController();
    return ListView(
      children: [
        const Text("Search Input"),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController1,
                hintText: 'Search Input',
                errorText: null,
                enabled: true,
                suffixIcon: IconsKit.search,
                onIconPressed: () {},
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                errorText: null,
                controller: textEditingController2,
                hintText: 'Search Input',
                enabled: true,
                suffixIcon: IconsKit.search,
                onIconPressed: () {},
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: null,
                controller: textEditingController3,
                hintText: 'Search Input',
                enabled: true,
                suffixIcon: IconsKit.search,
                onIconPressed: null,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController4,
                hintText: 'Search Input',
                errorText: '',
                enabled: true,
                suffixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                errorText: '',
                controller: textEditingController5,
                hintText: 'Search Input',
                enabled: true,
                suffixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: '',
                controller: textEditingController6,
                hintText: 'Search Input',
                enabled: true,
                suffixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController7,
                hintText: 'Search Input',
                errorText: null,
                enabled: false,
                suffixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                controller: textEditingController8,
                hintText: 'Search Input',
                errorText: null,
                enabled: false,
                suffixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: null,
                enabled: false,
                controller: textEditingController9,
                hintText: 'Search Input',
                suffixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController10,
                hintText: 'Search Input',
                errorText: null,
                enabled: true,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                errorText: null,
                controller: textEditingController11,
                hintText: 'Search Input',
                enabled: true,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: null,
                controller: textEditingController12,
                hintText: 'Search Input',
                enabled: true,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController13,
                hintText: 'Search Input',
                errorText: '',
                enabled: true,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                errorText: '',
                controller: textEditingController14,
                hintText: 'Search Input',
                enabled: true,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: '',
                controller: textEditingController15,
                hintText: 'Search Input',
                enabled: true,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController16,
                hintText: 'Search Input',
                errorText: null,
                enabled: false,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                controller: textEditingController17,
                hintText: 'Search Input',
                errorText: null,
                enabled: false,
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: null,
                enabled: false,
                controller: textEditingController18,
                hintText: 'Search Input',
                prefixIcon: IconsKit.search,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Clear Input",
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController19,
                hintText: 'Clear Input',
                errorText: null,
                enabled: true,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                errorText: null,
                controller: textEditingController20,
                hintText: 'Clear Input',
                enabled: true,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: null,
                controller: textEditingController21,
                hintText: 'Clear Input',
                enabled: true,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController22,
                hintText: 'Clear Input',
                errorText: 'The text of the name of the input error',
                enabled: true,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                errorText: 'The text of the name of the input error',
                controller: textEditingController23,
                hintText: 'Clear Input',
                enabled: true,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: 'The text of the name of the input error',
                controller: textEditingController24,
                hintText: 'Clear Input',
                enabled: true,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesXl(
                controller: textEditingController25,
                hintText: 'Clear Input',
                errorText: null,
                enabled: false,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesL(
                controller: textEditingController26,
                hintText: 'Clear Input',
                errorText: null,
                enabled: false,
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesS(
                errorText: null,
                enabled: false,
                controller: textEditingController27,
                hintText: 'Clear Input',
                suffixIcon: IconsKit.passwordHide,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text("Label Input"),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelXl(
                hintText: 'Text Input',
                labelText: 'Label name',
                enabled: true,
                controller: textEditingController28,
                errorText: null,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelL(
                enabled: true,
                errorText: null,
                controller: textEditingController29,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelS(
                enabled: true,
                errorText: null,
                controller: textEditingController30,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelXl(
                hintText: 'Text Input',
                labelText: 'Label name',
                enabled: true,
                controller: textEditingController31,
                errorText: 'The text of the name of input error',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelL(
                enabled: true,
                errorText: 'The text of the name of the input error',
                controller: textEditingController32,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelS(
                enabled: true,
                errorText: 'The text of the name of the input error',
                controller: textEditingController33,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelXl(
                hintText: 'Text Input',
                labelText: 'Label name',
                enabled: true,
                controller: textEditingController34,
                errorText: '',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelL(
                enabled: true,
                errorText: '',
                controller: textEditingController35,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelS(
                enabled: true,
                errorText: '',
                controller: textEditingController36,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelXl(
                hintText: 'Text Input',
                labelText: 'Label name',
                enabled: false,
                controller: textEditingController37,
                errorText: null,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelL(
                enabled: false,
                errorText: null,
                controller: textEditingController38,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: InputWidget.maxLinesLabelS(
                enabled: false,
                errorText: null,
                controller: textEditingController39,
                labelText: 'Label name',
                hintText: 'Text Input',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    );
  }
}
