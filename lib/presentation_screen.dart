import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/badge_widget.dart';
import 'package:toptom_widgetbook/top_kit/components/border_radius_widget.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_accept.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_black.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_default.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_ghost.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_icon.dart';
import 'package:toptom_widgetbook/top_kit/components/buttons/button_outline.dart';
import 'package:toptom_widgetbook/top_kit/components/double_input.dart';
import 'package:toptom_widgetbook/top_kit/components/text_area_widget.dart';
import 'package:toptom_widgetbook/top_kit/components/toast_notification_frame.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/icons_kit.dart';

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({Key? key}) : super(key: key);

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  final minController = TextEditingController();
  final maxController = TextEditingController();
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const Text(
            'Checkbox',
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  _checkBoxValue = value!;
                  setState(() {});
                },
              ),
            ],
          ),
          const Text(
            'Icon Button',
            textAlign: TextAlign.center,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.whiteXl(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteL(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteM(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.whiteS(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.defaultXl(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultL(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultM(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.defaultS(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ButtonIcon.outlineXl(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineL(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineM(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    ButtonIcon.outlineS(
                      assetName: IconsKit.arrowRigth,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
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

          //https://pub.dev/packages/calendar_date_picker2/example
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: TextButton(
          //     onPressed: () async {
          //       showDialog(context: context, builder: (context) => CalendarDatePicker2());

          //     },
          //     child: const Text('Date picker'),
          //   ),
          // )
          const Text(
            'Double input',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: DoubleInput(
              minController: minController,
              maxController: maxController,
            ),
          ),
          const Text("TextArea"),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 8,),
              Expanded(
                  child: TextAreaWidget.maxLinesXl(
                    hintText: "Text Area",
                    enabled: true,
                  ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesS(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 8,),
              Expanded(
                child: TextAreaWidget.maxLinesXl(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  hintText: "Text Area",
                  enabled: true,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                  child: TextAreaWidget.maxLinesS(
                    hintText: "Text Area",
                    enabled: true,
                  )
              ),
              const SizedBox(width: 8,),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 8,),
              Expanded(
                child:TextAreaWidget.maxLinesXl(
                  hintText: "Text Area",
                  enabled: false,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesL(
                  hintText: "Text Area",
                  enabled: false,
                ),
              ),
              const SizedBox(width: 8), // Add spacing between text fields
              Expanded(
                child: TextAreaWidget.maxLinesS(
                  hintText: "Text Area",
                  enabled: false,
                ),
              ),
              const SizedBox(width: 8,),
            ],
          ),
          const SizedBox(height: 10,),
          const Text("Badge"),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                  statusText: 'Status text', color: ColorKit.badgeColorInfo,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                  statusText: 'Status text', color: ColorKit.badgeColorInfo,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus4,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus4,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorError,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                  statusText: 'Status text', color: ColorKit.badgeColorError,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          const Text("Secondary Badge"),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorInfo,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorInfo,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus3,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus3,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.colorErrorPrimary,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.colorErrorPrimary,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
            ],
          ),
        ],
      ),
    );
  }
}