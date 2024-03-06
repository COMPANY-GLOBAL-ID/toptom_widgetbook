import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class ToolTipWidget extends StatelessWidget {
  final String title;
  final Widget? content;
  const ToolTipWidget({
    super.key,
    required this.title,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,style: TextStylesKit.buttonXl.copyWith(
              color: ColorKit.colorTextPrimary,
              fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap:() => Navigator.of(context).pop(),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: ColorKit.colorOverlayPrimary,
            ),
              child: SvgPicture.asset(
                IconsKit.cross,
                colorFilter: const ColorFilter.mode(ColorKit.colorTextPrimary, BlendMode.srcIn),
              ),
            ),
          )
        ],
      ),
      content: content,
      contentTextStyle: TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextSecondary,fontWeight: FontWeight.w400),
    );
  }
}
