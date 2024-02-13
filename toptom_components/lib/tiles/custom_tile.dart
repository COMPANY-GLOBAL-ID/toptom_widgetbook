
import 'package:flutter/material.dart';
import 'package:toptom_components/extends/num.dart';
import 'package:toptom_theme/theme.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Widget? icon;
  final String? trailing;
  final TextStyle? trailingStyle;

  const CustomTile({
    super.key,
    required this.title,
    this.onPressed,
    this.icon,
    this.trailing,
    this.trailingStyle
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Container(
        margin: 10.vp,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(borderRadius: 12.br, color: TopTomTheme.of(context).colorScheme.onStandard),
        child: Row(
          children: [
            if(icon != null) ...[
              icon!,
              10.w,
            ],
            Expanded(
              child: Text(title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: TopTomTheme.of(context).colorScheme.textPrimary
                )
              )
            ),
            if(trailing != null) ...[
              10.w,
              Text(
                trailing!,
                style: trailingStyle ?? TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: TopTomTheme.of(context).colorScheme.primary
                ),
              )
            ]

          ],
        ),
      ),
    );
  }
}
