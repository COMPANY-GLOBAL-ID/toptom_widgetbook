import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class CaptionScreen extends StatefulWidget {
  const CaptionScreen({super.key});

  @override
  State<CaptionScreen> createState() => _CaptionScreenState();
}

class _CaptionScreenState extends State<CaptionScreen> {
  final textEditingController1 = TextEditingController();
  final textEditingController2 = TextEditingController();
  final textEditingController3 = TextEditingController();
  final textEditingController4 = TextEditingController();
  final textEditingController5 = TextEditingController();
  final textEditingController6 = TextEditingController();
  final textEditingController7 = TextEditingController();
  final textEditingController8 = TextEditingController();
  final textEditingController9 = TextEditingController();
  final textEditingController10 = TextEditingController();
  final textEditingController11 = TextEditingController();
  final textEditingController12 = TextEditingController();
  final textEditingController13 = TextEditingController();
  final textEditingController14 = TextEditingController();
  final textEditingController15 = TextEditingController();
  final textEditingController16 = TextEditingController();
  final textEditingController17 = TextEditingController();
  final textEditingController18 = TextEditingController();
  final textEditingController19 = TextEditingController();
  final textEditingController20 = TextEditingController();
  final textEditingController21 = TextEditingController();
  final textEditingController22 = TextEditingController();
  final textEditingController23 = TextEditingController();
  final textEditingController24 = TextEditingController();
  final textEditingController25 = TextEditingController();
  final textEditingController26 = TextEditingController();
  final textEditingController27 = TextEditingController();
  final textEditingController28 = TextEditingController();
  final textEditingController29 = TextEditingController();
  final textEditingController30 = TextEditingController();
  final textEditingController31 = TextEditingController();
  final textEditingController32 = TextEditingController();
  final textEditingController33 = TextEditingController();
  final textEditingController34 = TextEditingController();
  final textEditingController35 = TextEditingController();
  final textEditingController36 = TextEditingController();
  final textEditingController37 = TextEditingController();
  final textEditingController38 = TextEditingController();
  final textEditingController39 = TextEditingController();
  final textEditingController40 = TextEditingController();
  final textEditingController41 = TextEditingController();
  final textEditingController42 = TextEditingController();
  final textEditingController43 = TextEditingController();
  final textEditingController44 = TextEditingController();
  final textEditingController45 = TextEditingController();
  final textEditingController46 = TextEditingController();
  final textEditingController47 = TextEditingController();
  final textEditingController48 = TextEditingController();
  final textEditingController49 = TextEditingController();
  final textEditingController50 = TextEditingController();
  final textEditingController51 = TextEditingController();
  final minController1 = TextEditingController();
  final maxController1 = TextEditingController();
  final minController2 = TextEditingController();
  final maxController2 = TextEditingController();
  final minController3 = TextEditingController();
  final maxController3 = TextEditingController();
  final inputController1 = TextEditingController();
  final inputController2 = TextEditingController();
  final inputController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          const Text(
            'Notification',
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: ToastNotificationFrame(
              backgroundColor: ColorKit.colorYelowStar,
              title: 'Заголовок',
              message: 'message',
            ),
          ),
          const Text(
            'Double input',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: DoubleInput.sizeXl(
              minController: minController1,
              maxController: maxController1,
              minHintText: "Text Input 1",
              maxHintText: "Text Input 2",
              enabled: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: DoubleInput.sizeL(
              minController: minController2,
              maxController: maxController2,
              minHintText: "Text Input 1",
              maxHintText: "Text Input 2",
              enabled: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: DoubleInput.sizeS(
              minController: minController3,
              maxController: maxController3,
              minHintText: "Text Input 1",
              maxHintText: "Text Input 2",
              enabled: true,
            ),
          ),
          const SizedBox(height: 20,),
          const Text("Search Input"),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController1,
                  hintText: 'Search Input',
                  errorText: null,
                  enabled: true,
                  suffixIcon: IconsKit.search,
                  onIconPressed: (){},
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  errorText: null,
                  controller: textEditingController2,
                  hintText: 'Search Input',
                  enabled: true,
                  suffixIcon: IconsKit.search,
                  onIconPressed: (){},
                ),
              ),
              const SizedBox(width: 10,),
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
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController4,
                  hintText: 'Search Input',
                  errorText: '',
                  enabled: true,
                  suffixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  errorText: '',
                  controller: textEditingController5,
                  hintText: 'Search Input',
                  enabled: true,
                  suffixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: '',
                  controller: textEditingController6,
                  hintText: 'Search Input',
                  enabled: true,
                  suffixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController7,
                  hintText: 'Search Input',
                  errorText: null,
                  enabled: false,
                  suffixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  controller: textEditingController8,
                  hintText: 'Search Input',
                  errorText: null,
                  enabled: false,
                  suffixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: null,
                  enabled: false,
                  controller: textEditingController9,
                  hintText: 'Search Input',
                  suffixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController10,
                  hintText: 'Search Input',
                  errorText: null,
                  enabled: true,
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  errorText: null,
                  controller: textEditingController11,
                  hintText: 'Search Input',
                  enabled: true,
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: null,
                  controller: textEditingController12,
                  hintText: 'Search Input',
                  enabled: true,
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController13,
                  hintText: 'Search Input',
                  errorText: '',
                  enabled: true,
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  errorText: '',
                  controller: textEditingController14,
                  hintText: 'Search Input',
                  enabled: true,
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: '',
                  controller: textEditingController15,
                  hintText: 'Search Input',
                  enabled: true,
                  prefixIcon : IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController16,
                  hintText: 'Search Input',
                  errorText: null,
                  enabled: false,
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  controller: textEditingController17,
                  hintText: 'Search Input',
                  errorText: null,
                  enabled: false,
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: null,
                  enabled: false,
                  controller: textEditingController18,
                  hintText: 'Search Input',
                  prefixIcon: IconsKit.search,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 10,),
          const Text("Clear Input",),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController19,
                  hintText: 'Clear Input',
                  errorText: null,
                  enabled: true,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  errorText: null,
                  controller: textEditingController20,
                  hintText: 'Clear Input',
                  enabled: true,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: null,
                  controller: textEditingController21,
                  hintText: 'Clear Input',
                  enabled: true,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController22,
                  hintText: 'Clear Input',
                  errorText: 'The text of the name of the input error',
                  enabled: true,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  errorText: 'The text of the name of the input error',
                  controller: textEditingController23,
                  hintText: 'Clear Input',
                  enabled: true,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: 'The text of the name of the input error',
                  controller: textEditingController24,
                  hintText: 'Clear Input',
                  enabled: true,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesXl(
                  controller: textEditingController25,
                  hintText: 'Clear Input',
                  errorText: null,
                  enabled: false,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesL(
                  controller: textEditingController26,
                  hintText: 'Clear Input',
                  errorText: null,
                  enabled: false,
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesS(
                  errorText: null,
                  enabled: false,
                  controller: textEditingController27,
                  hintText: 'Clear Input',
                  suffixIcon: IconsKit.passwordHide,
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 20,),
          const Text("Label Input"),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelXl(
                  hintText: 'Text Input',
                  labelText: 'Label name',
                  enabled: true,
                  controller: textEditingController40,
                  errorText: null,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelL(
                  enabled: true,
                  errorText: null,
                  controller: textEditingController41,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelS(
                  enabled: true,
                  errorText: null,
                  controller: textEditingController42,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelXl(
                  hintText: 'Text Input',
                  labelText: 'Label name',
                  enabled: true,
                  controller: textEditingController43,
                  errorText: 'The text of the name of input error',
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelL(
                  enabled: true,
                  errorText: 'The text of the name of the input error',
                  controller: textEditingController44,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelS(
                  enabled: true,
                  errorText: 'The text of the name of the input error',
                  controller: textEditingController45,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelXl(
                  hintText: 'Text Input',
                  labelText: 'Label name',
                  enabled: true,
                  controller: textEditingController46,
                  errorText: '',
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelL(
                  enabled: true,
                  errorText: '',
                  controller: textEditingController47,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelS(
                  enabled: true,
                  errorText: '',
                  controller: textEditingController48,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelXl(
                  hintText: 'Text Input',
                  labelText: 'Label name',
                  enabled: false,
                  controller: textEditingController49,
                  errorText: null,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelL(
                  enabled: false,
                  errorText: null,
                  controller: textEditingController50,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: InputWidget.maxLinesLabelS(
                  enabled: false,
                  errorText: null,
                  controller: textEditingController51,
                  labelText: 'Label name',
                  hintText: 'Text Input',
                ),
              ),
              const SizedBox(width: 10,),
            ],
          ),
        ],
      );
  }
}
