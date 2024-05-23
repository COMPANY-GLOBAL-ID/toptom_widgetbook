import 'package:flutter/cupertino.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class StatusPageWidget extends StatelessWidget {
  final String title;
  final String description;
  final Widget child;
  final VoidCallback onPressed;
  final Icon icon;
  const StatusPageWidget({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
    required this.child,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    final size = ThemeCore.of(context).padding;
    return Padding(
      padding: EdgeInsets.all(size.xl),
      child: Column(
        children: [
           Center(
            child: icon,
          ),
          SizedBox(
            height: size.xl2,
          ),
          Text(
            title,
            style: ThemeCore.of(context).typography.h5,
            textAlign: TextAlign.center,
          ),
          Text(
            description,
            style: ThemeCore.of(context).typography.paragraphSmall.copyWith(
                  fontWeight: FontWeight.w500,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.xl2,
          ),
          SizedBox(
            width: double.infinity,
            child: ButtonWidget(
              onPressed: onPressed,
              size: ButtonSize.m,
              child: child,
            ),
          )
        ],
      ),
    );
  }
}
