import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toptom_widgetbook/kit/export.dart';

snackBarBuilder(BuildContext context, SnackBarOptions options) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 12,
      behavior: SnackBarBehavior.floating,
      backgroundColor: options.type.toBackgroundColor(context),
      duration: const Duration(seconds: 5),
      margin: const EdgeInsets.all(20),
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: options.hasIcon,
            child: Row(
              children: [
                Icon(
                  options.type.toIcon(),
                  color: options.type.toForegroundColor(context),
                ),
                const SizedBox(width: 15),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  options.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: options.type.toForegroundColor(context),
                  ),
                ),
                Visibility(
                  visible: options.message != null,
                  child: Text(
                    options.message ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: options.type.toForegroundColor(context),
                    ),
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: options.hasClose,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: Icon(
                Icons.close,
                color: options.type.toForegroundColor(context),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

enum SnackBarType {
  defaultType,
  error,
  success,
  warning,
  inverted;

  Color toBackgroundColor(BuildContext context) {
    SnackBarColorKit color = ThemeCore.of(context).color.snackBarColor;
    switch (this) {
      case SnackBarType.error:
        return color.error;
      case SnackBarType.success:
        return color.positive;
      case SnackBarType.warning:
        return color.warning;
      case SnackBarType.defaultType:
        return color.defaultPrimary;
      case SnackBarType.inverted:
        return color.inverted;
    }
  }

  Color toForegroundColor(BuildContext context) {
    SnackBarColorKit color = ThemeCore.of(context).color.snackBarColor;
    switch (this) {
      case SnackBarType.error:
        return color.errorText;
      case SnackBarType.success:
        return color.positiveText;
      case SnackBarType.warning:
        return color.warningText;
      case SnackBarType.defaultType:
        return color.defaultText;
      case SnackBarType.inverted:
        return color.invertedText;
    }
  }

  IconData toIcon() {
    switch (this) {
      case SnackBarType.error:
        return Icons.cancel;
      case SnackBarType.success:
        return Icons.check_circle;
      case SnackBarType.warning:
        return Icons.info_outline_rounded;
      case SnackBarType.defaultType:
        return Icons.info_outline_rounded;
      case SnackBarType.inverted:
        return Icons.info_outline_rounded;
    }
  }
}

class SnackBarOptions {
  final SnackBarType type;
  final String title;
  final String? message;
  final bool hasIcon;
  final bool hasClose;

  SnackBarOptions({
    this.type = SnackBarType.defaultType,
    required this.title,
    this.message,
    this.hasIcon = true,
    this.hasClose = false,
  });
}

class SnackBarScope extends InheritedWidget {
  const SnackBarScope({
    super.key,
    required super.child,
  });

  static show(BuildContext context, SnackBarOptions options) {
    snackBarBuilder(context, options);
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
