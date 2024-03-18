import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    required this.inputDecoration,
    this.textStyle,
  });

  final TextEditingController controller;
  final InputDecoration inputDecoration;
  final TextStyle? textStyle;

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
  }) {

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextSecondary);

    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
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
  }) {

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextSecondary);
    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
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
  }) {

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.errorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextSecondary);
    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        isCollapsed: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        enabledBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.colorStrokePrimary),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        errorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        focusedErrorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(color: ColorKit.errorPrimary),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
        ),
        disabledBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorOverlaySecondary,
          ),
          borderRadius: BorderRadius.circular(RadiusType.rdM.radius),
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

  factory InputWidget.maxLinesLabelXl(
      {String? labelText,
      String? hintText,
      required bool enabled,
      required TextEditingController controller,
      String? errorText,
      VoidCallback? onIconPressed,}) {
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

    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
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

    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
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

    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
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
    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
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
