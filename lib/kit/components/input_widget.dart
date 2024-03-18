import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class InputWidget extends StatelessWidget {
   InputWidget({
    super.key,
    required this.controller,
    required this.inputDecoration,
    this.textStyle, required this.context,
  });

  final TextEditingController controller;
  final InputDecoration inputDecoration;
  final TextStyle? textStyle;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      style: textStyle,
      decoration: inputDecoration,
    );
  }

  factory InputWidget.maxLinesXl({
    required TextEditingController controller,
    String? hintText,
    String? errorText,
    required bool enabled,
    Widget? suffixIcon,
    Widget? prefixIcon,
    VoidCallback? onIconPressed,
    required BuildContext context
  }) {

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextSecondary);
        final themeCore = ThemeCore.of(context);
    return InputWidget(
      context: context,
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
        ),
        errorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        focusedErrorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        prefixIconColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.focused)
                ? ColorKit.colorTextPrimary
                : ColorKit.colorTextSecondary
        ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(
          minHeight: ConstantsKit.iconLg,
          minWidth: ConstantsKit.iconLg,
        ),
        prefixIcon: prefixIcon,
        isDense: false,
        hintStyle: finalHintStyle,
        errorStyle: TextStylesKit.errorStyle,
        errorText: errorText,
        enabled: enabled,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(16),
        filled: !enabled,
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
      ),
    );
  }

  factory InputWidget.maxLinesL({
    required TextEditingController controller,
    String? hintText,
    required bool enabled,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? errorText,
    VoidCallback? onIconPressed,
    required BuildContext context
  }) {

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextSecondary);
        final themeCore = ThemeCore.of(context);
    return InputWidget(
      context: context,
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
        ),
        errorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        focusedErrorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: prefixIcon,
        isDense: true,
        hintStyle: finalHintStyle,
        errorStyle: TextStylesKit.errorStyle,
        errorText: errorText,
        enabled: enabled,
        hintText: hintText,
        filled: !enabled,
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
      ),
    );
  }

  factory InputWidget.maxLinesS({
    String? hintText,
    required bool enabled,
    required TextEditingController controller,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? errorText,
    VoidCallback? onIconPressed,
    required BuildContext context
  }) {
    ColorFilter iconColor =
        const ColorFilter.mode(ColorKit.colorTextSecondary, BlendMode.srcIn);
  final themeCore = ThemeCore.of(context);

    if (errorText != null) {
      iconColor =
          const ColorFilter.mode(ColorKit.errorPrimary, BlendMode.srcIn);
    }

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextSecondary);
    return InputWidget(
      context: context,
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        isCollapsed: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
          borderRadius: BorderRadius.circular(themeCore.radius.medium),
        ),
        enabledBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.colorStrokePrimary),
          borderRadius: BorderRadius.circular(themeCore.radius.medium),
        ),
        errorBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(themeCore.radius.medium),
        ),
        focusedErrorBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(themeCore.radius.medium),
        ),
        disabledBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorOverlaySecondary,
          ),
          borderRadius: BorderRadius.circular(themeCore.radius.medium),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintStyle: finalHintStyle,
        suffixIconConstraints: const BoxConstraints(
          minHeight: ConstantsKit.iconM,
          minWidth: ConstantsKit.iconM,
          maxHeight: ConstantsKit.iconL,
          maxWidth: ConstantsKit.iconL,
        ),
        prefixIconConstraints: const BoxConstraints(
          minHeight: ConstantsKit.iconM,
          minWidth: ConstantsKit.iconM,
          maxHeight: ConstantsKit.iconL,
          maxWidth: ConstantsKit.iconL,
        ),
        errorStyle: TextStylesKit.errorStyle,
        errorText: errorText,
        enabled: enabled,
        hintText: hintText,
        filled: !enabled,
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
      ),
    );
  }

  factory InputWidget.maxLinesLabelXl({
    String? labelText,
    String? hintText,
    required bool enabled,
    required TextEditingController controller,
    String? errorText,
    VoidCallback? onIconPressed,
    required BuildContext context
  }) {
    Widget? suffixIcon;

    if (errorText != null && errorText.isEmpty) {
      suffixIcon = IconButton(
        onPressed: onIconPressed,
        icon: const Icon(
          ToptomIcons.error_stroke,
          size: 13.33,
          color: ColorKit.colorTextSecondary,
        ),
      );
    }

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextSecondary);
        final themeCore = ThemeCore.of(context);
    return InputWidget(
      context: context,
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
        ),
        isDense: false,
        labelStyle: TextStylesKit.buttonS.copyWith(
          color: ColorKit.colorTextSecondary,
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: finalHintStyle,
        errorStyle: TextStylesKit.errorStyle,
        errorText: errorText,
        enabled: enabled,
        filled: !enabled,
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
        labelText: labelText,
      ),
    );
  }

  factory InputWidget.maxLinesLabelL({
    String? labelText,
    String? hintText,
    required bool enabled,
    required TextEditingController controller,
    String? errorText,
    VoidCallback? onIconPressed,
    required BuildContext context,
  }) {
    Widget? suffixIcon;

    if (errorText != null && errorText.isEmpty) {
      suffixIcon = IconButton(
        onPressed: onIconPressed,
        icon: const Icon(
          ToptomIcons.error_stroke,
          size: 13.33,
          color: ColorKit.colorTextSecondary,
        ),
      );
    }

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextSecondary);
        final themeCore = ThemeCore.of(context);
    return InputWidget(
      context: context,
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
        ),
        isDense: true,
        labelStyle: TextStylesKit.buttonS.copyWith(
          color: ColorKit.colorTextSecondary,
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: finalHintStyle,
        errorStyle: TextStylesKit.errorStyle,
        errorText: errorText,
        enabled: enabled,
        filled: !enabled,
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
        labelText: labelText,
      ),
    );
  }

  factory InputWidget.maxLinesLabelS({
    String? labelText,
    String? hintText,
    required bool enabled,
    required TextEditingController controller,
    String? errorText,
    VoidCallback? onIconPressed,
    required BuildContext context
  }) {
    Widget? suffixIcon;

    if (errorText != null && errorText.isEmpty) {
      suffixIcon = IconButton(
        onPressed: onIconPressed,
        icon: const Icon(
          ToptomIcons.error_stroke,
          size: 13.33,
          color: ColorKit.colorTextSecondary,
        ),
      );
    }

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextSecondary);
        final themeCore = ThemeCore.of(context);
    return InputWidget(
      context: context,
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
        ),
        isDense: true,
        labelStyle: TextStylesKit.buttonS.copyWith(
          color: ColorKit.colorTextSecondary,
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: finalHintStyle,
        errorStyle: TextStylesKit.errorStyle,
        errorText: errorText,
        enabled: enabled,
        filled: !enabled,
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
        labelText: labelText,
      ),
    );
  }

  factory InputWidget.maxLinesLabelM({
    required String labelText,
    required String hintText,
    required bool enabled,
    required TextEditingController controller,
    required String? errorText,
    required BuildContext context,
  }) {
    Widget? suffixIcon;
    if (errorText != null && errorText.isEmpty) {
      suffixIcon = Icon(ToptomIcons.eyedropper);
    }
    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextSecondary);
        final themeCore= ThemeCore.of(context);
    return InputWidget(
      context: context,
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: themeCore.border.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
        ),
        labelStyle: TextStylesKit.buttonS.copyWith(
          color: ColorKit.colorTextSecondary,
        ),
        isCollapsed: true,
        hintText: hintText,
        suffixIcon: suffixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: finalHintStyle,
        errorStyle: TextStylesKit.errorStyle,
        errorText: errorText,
        enabled: enabled,
        labelText: labelText,
        filled: !enabled,
        fillColor: !enabled ? ColorKit.colorOverlaySecondary : null,
      ),
    );
  }
}
