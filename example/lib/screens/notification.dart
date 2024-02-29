import 'package:flutter/cupertino.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Notification',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: ToastNotificationFrame(
              backgroundColor: ColorKit.colorYelowStar,
              title: 'Заголовок',
              message: 'message',
            ),
          ),
        ],
      ),
    );
  }
}
