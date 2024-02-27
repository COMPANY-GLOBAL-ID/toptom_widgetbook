import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    required String hintText,
    required String? errorText,
    required bool enabled,
    String? suffixIcon,
    String? prefixIcon,
  }) {
    Widget? finalSuffixIcon;
    Widget? finalPrefixIcon;
    ColorFilter iconColor = const ColorFilter.mode(ColorKit.colorTextSecondary, BlendMode.srcIn);

    if (errorText != null) {
      iconColor = const ColorFilter.mode(ColorKit.colorErrorPrimary, BlendMode.srcIn);
    }

    finalSuffixIcon = suffixIcon != null && suffixIcon.isNotEmpty ?
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
            suffixIcon,
            height: ConstantsKit.iconLg,
            width: ConstantsKit.iconLg,
            colorFilter: iconColor,
          ),
        ) : null;

    finalPrefixIcon = prefixIcon != null && prefixIcon.isNotEmpty ?
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
            prefixIcon,
            height: ConstantsKit.iconLg,
            width: ConstantsKit.iconLg,
            colorFilter: iconColor,
          ),
        ) : null;

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.colorErrorPrimary)
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
        suffixIcon: finalSuffixIcon,
        suffixIconConstraints: const BoxConstraints(
          minHeight: ConstantsKit.iconLg,
          minWidth: ConstantsKit.iconLg,
        ),
        prefixIcon: finalPrefixIcon,
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
    required String hintText,
    required bool enabled,
    String? suffixIcon,
    String? prefixIcon,
    required String? errorText,
  }) {
    Widget? finalSuffixIcon;
    Widget? finalPrefixIcon;
    ColorFilter iconColor = const ColorFilter.mode(ColorKit.colorTextSecondary, BlendMode.srcIn);

    if (errorText != null) {
      iconColor = const ColorFilter.mode(ColorKit.colorErrorPrimary, BlendMode.srcIn);
    }

    finalSuffixIcon = suffixIcon != null && suffixIcon.isNotEmpty ?
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
            suffixIcon,
            height: ConstantsKit.iconLg,
            width: ConstantsKit.iconLg,
            colorFilter: iconColor,
          ),
        ) : null;

    finalPrefixIcon = prefixIcon != null && prefixIcon.isNotEmpty ?
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset(
            prefixIcon,
            height: ConstantsKit.iconLg,
            width: ConstantsKit.iconLg,
            colorFilter: iconColor,
          ),
        ): null;

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.colorErrorPrimary)
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
        suffixIcon: finalSuffixIcon,
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: finalPrefixIcon,
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
    required String hintText,
    required bool enabled,
    required TextEditingController controller,
    String? suffixIcon,
    String? prefixIcon,
    required String? errorText,
  }) {
    Widget? finalSuffixIcon;
    Widget? finalPrefixIcon;
    ColorFilter iconColor = const ColorFilter.mode(ColorKit.colorTextSecondary, BlendMode.srcIn);

    if (errorText != null) {
      iconColor = const ColorFilter.mode(ColorKit.colorErrorPrimary, BlendMode.srcIn);
    }

    finalSuffixIcon = suffixIcon != null && suffixIcon.isNotEmpty ?
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(
              suffixIcon,
              height: ConstantsKit.iconM,
              width: ConstantsKit.iconM,
              colorFilter: iconColor,
            ),
          ) : null;

    finalPrefixIcon = prefixIcon != null && prefixIcon.isNotEmpty ?
         IconButton(
           onPressed: (){},
           icon: SvgPicture.asset(
              prefixIcon,
              height: ConstantsKit.iconM,
              width: ConstantsKit.iconM,
              colorFilter: iconColor,
           ),
         ) : null;

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextSecondary);
    return InputWidget(
      controller: controller,
      textStyle: finalTextStyle,
      inputDecoration: InputDecoration(
        isCollapsed: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 4,horizontal: 8),
        focusedBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorTextPrimary,
          ),
          borderRadius: BorderRadius.circular(ConstantsKit.rdM)
        ),
        enabledBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorKit.colorStrokePrimary
          ),
          borderRadius: BorderRadius.circular(ConstantsKit.rdM),
        ),
        errorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
              color: ColorKit.colorErrorPrimary
          ),
          borderRadius: BorderRadius.circular(ConstantsKit.rdM),
        ),
        focusedErrorBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
              color: ColorKit.colorErrorPrimary
          ),
          borderRadius: BorderRadius.circular(ConstantsKit.rdM),
        ),
        disabledBorder: BorderKit.defaultTextInputBorder.copyWith(
          borderSide: const BorderSide(
              color: ColorKit.colorOverlaySecondary,
          ),
          borderRadius: BorderRadius.circular(ConstantsKit.rdM),
        ),
        suffixIcon: finalSuffixIcon,
        prefixIcon: finalPrefixIcon,
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
    required String labelText,
    required String hintText,
    required bool enabled,
    required TextEditingController controller,
    required String? errorText,
  }) {
    Widget? suffixIcon;

    if (errorText != null && errorText.isEmpty) {
      suffixIcon = IconButton(
        onPressed: (){},
        icon: SvgPicture.asset(
          IconsKit.errorIcon,
          height: 20,
          width: 20,
        ),
      );
    }

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonXl.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonXl.copyWith(color: ColorKit.colorErrorPrimary)
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
    required String labelText,
    required String hintText,
    required bool enabled,
    required TextEditingController controller,
    required String? errorText,
  }) {
    Widget? suffixIcon;

    if (errorText != null && errorText.isEmpty) {
      suffixIcon = IconButton(
        onPressed: (){},
        icon: SvgPicture.asset(
          IconsKit.errorIcon,
          height: 20,
          width: 20,
        ),
      );
    }

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonM.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonM.copyWith(color: ColorKit.colorErrorPrimary)
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
    required String labelText,
    required String hintText,
    required bool enabled,
    required TextEditingController controller,
    required String? errorText,
  }) {
    Widget? suffixIcon;

    if (errorText != null && errorText.isEmpty) {
      suffixIcon = IconButton(
        onPressed: (){},
        icon: SvgPicture.asset(
          IconsKit.errorIcon,
          height: 13.33,
          width: 13.33,
        ),
      );
    }

    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.colorErrorPrimary)
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
      suffixIcon = SvgPicture.asset(
        IconsKit.errorIcon,
      );
    }
    TextStyle finalTextStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.colorErrorPrimary)
        : TextStylesKit.buttonS.copyWith(color: ColorKit.colorTextPrimary);

    TextStyle finalHintStyle = errorText != null
        ? TextStylesKit.buttonS.copyWith(color: ColorKit.colorErrorPrimary)
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
