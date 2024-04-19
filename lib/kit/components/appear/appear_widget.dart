import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/theme_new/styles/notification_style/notification_type.dart';

import '../../../toptom_widgetbook.dart';

class NotificationAppear extends StatelessWidget {
  final NotificationType type;
  final NotificationColor color;
  final NotificationSize size;
  final String title;
  final String? description;
  final VoidCallback? cancel;
  final bool hasIcon;

  const NotificationAppear({
    super.key,
    required this.title,
    this.description,
    this.hasIcon = false,
    this.cancel,
    this.color = NotificationColor.black,
    this.type = NotificationType.primary,
    this.size = NotificationSize.primary,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ThemeCore.of(context).radius.large),
        color: type.toBackground(context, color),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: size.toPadding(context),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hasIcon == true) ...[
                Padding(
                  padding: size.toIconRightPadding(context),
                  child: Icon(color.toIcon(context),
                      color: type.toForeground(context, color)),
                ),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: ThemeCore.of(context)
                          .typography
                          .paragraphMedium
                          .copyWith(
                            color: type.toForeground(context, color),
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    if (description != null) ...[
                      Text(
                        description!,
                        style: ThemeCore.of(context)
                            .typography
                            .paragraphMedium
                            .copyWith(
                                color: type.toForeground(context, color),
                                fontWeight: FontWeight.w500),
                      )
                    ]
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              if (cancel != null) ...[
                Padding(
                  padding: size.toIconLeftPadding(context),
                  child: Icon(
                    Icons.close,
                    color: type.toForeground(context, color),
                  ),
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}
