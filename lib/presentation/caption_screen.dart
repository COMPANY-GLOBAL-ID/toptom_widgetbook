import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/double_input.dart';
import 'package:toptom_widgetbook/top_kit/components/toast_notification_frame.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/color_kit.dart';

class CaptionScreen extends StatefulWidget {
  const CaptionScreen({super.key});

  @override
  State<CaptionScreen> createState() => _CaptionScreenState();
}

class _CaptionScreenState extends State<CaptionScreen> {
  final minController = TextEditingController();
  final maxController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
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
            child: DoubleInput(
              minController: minController,
              maxController: maxController,
            ),
          ),
        ],
      ),
    );
  }
}
