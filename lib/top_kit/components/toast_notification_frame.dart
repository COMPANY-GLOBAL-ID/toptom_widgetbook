import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/constants_kit_export.dart';


class ToastNotificationFrame extends StatelessWidget {
  const ToastNotificationFrame({
    Key? key,
    required this.backgroundColor,
    this.title,
    required this.message,
  }) : super(key: key);

  final Color backgroundColor;
  final String? title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ConstantsKit.rdLgS),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              IconsKit.info,
              height: ConstantsKit.iconL,
              width: ConstantsKit.iconL,
              colorFilter: const ColorFilter.mode(
                ColorKit.colorWhite,
                BlendMode.srcIn,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (title != null && title!.isNotEmpty)
                      Text(
                        title!,
                        overflow: TextOverflow.ellipsis,
                        style: TextStylesKit.buttonXl.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    Text(
                      message,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStylesKit.buttonXl.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
