import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants_kit/color_kit.dart';

snackBarBuilder(BuildContext context, SnackBarOptions options) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 12,
      behavior: SnackBarBehavior.floating,
      backgroundColor: options.type.toBackgroundColor(),
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
                  color: options.type.toForegroundColor(),
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
                    color: options.type.toForegroundColor(),
                  ),
                ),
                Visibility(
                  visible: options.message != null,
                  child: Text(
                    options.message ?? '',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: options.type.toForegroundColor(),
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
                color: options.type.toForegroundColor(),
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

  Color toBackgroundColor() {
    switch (this) {
      case SnackBarType.error:
        return ColorKit.errorPrimary;
      case SnackBarType.success:
        return ColorKit.positivePrimary;
      case SnackBarType.warning:
        return ColorKit.warningPrimary;
      case SnackBarType.defaultType:
        return ColorKit.defaultPrimary;
      case SnackBarType.inverted:
        return ColorKit.invertedPrimary;
    }
  }

  Color toForegroundColor() {
    switch (this) {
      case SnackBarType.error:
        return ColorKit.errorTextPrimary;
      case SnackBarType.success:
        return ColorKit.positiveTextPrimary;
      case SnackBarType.warning:
        return ColorKit.warningTextPrimary;
      case SnackBarType.defaultType:
        return ColorKit.defaultTextPrimary;
      case SnackBarType.inverted:
        return ColorKit.invertedTextPrimary;
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
