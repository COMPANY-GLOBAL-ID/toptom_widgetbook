import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final TextStyle? labelStyle;
  final String? errorText;
  final bool isRequired;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onSubmit;
  final int? maxLength;
  final bool? enabled;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? minLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool? isDense;
  final bool? filled;
  final Color? fillColor;
  final Widget? suffix;
  final bool? isCollapsed;
  final FocusNode? focusNode;
  final String? obscureText;

  const TextFieldWidget({
    super.key,
    this.controller,
    this.label,
    this.isRequired = false,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit,
    this.hintText,
    this.maxLength,
    this.enabled,
    this.errorText,
    this.keyboardType,
    this.maxLines = 1,
    this.minLines = 1,
    this.inputFormatters,
    this.isDense = false,
    this.labelStyle,
    this.filled,
    this.fillColor,
    this.suffix,
    this.isCollapsed,
    this.focusNode,
    this.obscureText,
  });

  static final MaskTextInputFormatter _phoneMask = MaskTextInputFormatter(
    mask: '+# (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '7',
    type: MaskAutoCompletionType.lazy,
  );

  static final MaskTextInputFormatter _dateMask = MaskTextInputFormatter(
    mask: '##.##.####',
    filter: {"#": RegExp(r'[0-9]')},
    initialText: '7',
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    final ColorSchemeKit colors = ThemeCore.of(context).color.scheme;
    final TextStyle paragraphSmall =
        ThemeCore.of(context).typography.paragraphMedium;
    final double radius = ThemeCore.of(context).radius.extraLarge;

    bool isError = errorText != null;
    bool isDisable = enabled == false;

    Color color = isError ? colors.errorPrimary : colors.textSecondary;
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        radius,
      ),
      borderSide: BorderSide(
        color: color,
        width: 1,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          TopField(label: label!, isRequired: isRequired, style: labelStyle),
          const SizedBox(height: 5)
        ],
        TextField(
          keyboardType: keyboardType,
          enabled: enabled,
          onSubmitted: onSubmit,
          controller: controller,
          maxLength: maxLength,
          obscureText: obscureText != null,
          obscuringCharacter: obscureText ?? '*',
          style: paragraphSmall.copyWith(
            fontWeight: FontWeight.w500,
            color: color,
          ),
          inputFormatters: inputFormatters,
          maxLines: maxLines,
          focusNode: focusNode,
          decoration: InputDecoration(
            suffixIconColor: color,
            prefixIconColor: color,
            errorStyle: paragraphSmall.copyWith(
              color: color,
              fontWeight: FontWeight.w400,
            ),
            errorBorder: border,
            suffix: suffix,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: isDisable,
            fillColor: fillColor,
            hintText: hintText,
            errorText: errorText,
            hintStyle: paragraphSmall.copyWith(
              color: color,
              fontWeight: FontWeight.w500,
            ),
            isDense: isDense,
            isCollapsed: isCollapsed,
            contentPadding: EdgeInsets.all(ThemeCore.of(context).padding.l),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                radius,
              ),
              borderSide: BorderSide.none,
            ),
            enabledBorder: border,
            focusedBorder: border,
            focusedErrorBorder: border,
            border: border,
          ),
        ),
      ],
    );
  }

  factory TextFieldWidget.description({
    Key? key,
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    int? maxLength,
    int? maxLines = 4,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,
  }) {
    return TextFieldWidget(
      key: key,
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      maxLength: maxLength,
      maxLines: maxLines,
      enabled: enabled,
      minLines: 5,
      isDense: isDense,
      filled: filled,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.email({
    Key? key,
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    int? maxLength,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,
  }) {
    return TextFieldWidget(
      key: key,
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.emailAddress,
      enabled: enabled,
      filled: filled,
      fillColor: fillColor,
      isCollapsed: isCollapsed,
      isDense: isDense,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.number({
    Key? key,
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    int? maxLength,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,
  }) {
    return TextFieldWidget(
      key: key,
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.number,
      enabled: enabled,
      maxLength: maxLength,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      filled: filled,
      isCollapsed: isCollapsed,
      isDense: isDense,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.phone({
    Key? key,
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,
  }) {
    return TextFieldWidget(
      key: key,
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.phone,
      enabled: enabled,
      inputFormatters: [_phoneMask],
      filled: filled,
      isCollapsed: isCollapsed,
      isDense: isDense,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.date({
    Key? key,
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,
  }) {
    return TextFieldWidget(
      key: key,
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      keyboardType: TextInputType.phone,
      enabled: enabled,
      inputFormatters: [_dateMask],
      filled: filled,
      isCollapsed: isCollapsed,
      isDense: isDense,
      fillColor: fillColor,
      focusNode: focusNode,
    );
  }

  factory TextFieldWidget.password({
    Key? key,
    TextEditingController? controller,
    String? label,
    String? hintText,
    String? errorText,
    bool isRequired = false,
    Widget? suffixIcon,
    Widget? prefixIcon,
    Function(String)? onSubmit,
    int? maxLength,
    bool? enabled,
    bool? isDense = false,
    bool? isCollapsed = false,
    TextStyle? hintStyle,
    TextStyle? textStyle,
    bool? filled,
    Color? fillColor,
    FocusNode? focusNode,
    obscureText = '*',
  }) {
    return TextFieldWidget(
      key: key,
      controller: controller,
      label: label,
      hintText: hintText,
      errorText: errorText,
      isRequired: isRequired,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      onSubmit: onSubmit,
      maxLength: maxLength,
      enabled: enabled,
      filled: filled,
      fillColor: fillColor,
      isCollapsed: isCollapsed,
      isDense: isDense,
      focusNode: focusNode,
      keyboardType: TextInputType.visiblePassword,
      obscureText: obscureText,
    );
  }
}

class PasswordFieldWidget extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final TextStyle? labelStyle;
  final String? errorText;
  final bool isRequired;
  final Widget? hideIcon;
  final Widget? showIcon;
  final Widget? prefixIcon;
  final Function(String)? onSubmit;
  final int? maxLength;
  final bool? enabled;
  final bool? isDense;
  final bool? isCollapsed;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final bool? filled;
  final Color? fillColor;
  final FocusNode? focusNode;

  const PasswordFieldWidget({
    super.key,
    this.controller,
    this.label,
    this.hintText,
    this.labelStyle,
    this.errorText,
    this.isRequired = false,
    this.hideIcon,
    this.showIcon,
    this.prefixIcon,
    this.onSubmit,
    this.maxLength,
    this.enabled,
    this.isDense = false,
    this.hintStyle,
    this.textStyle,
    this.filled,
    this.fillColor,
    this.isCollapsed = false,
    this.focusNode,
  });

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool hide = true;
  _toggle() {
    setState(() {
      hide = !hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget.password(
      key: widget.key,
      controller: widget.controller,
      label: widget.label,
      hintText: widget.hintText,
      errorText: widget.errorText,
      isRequired: widget.isRequired,
      suffixIcon: InkWell(
        onTap: _toggle,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        child: hide ? widget.hideIcon : widget.showIcon,
      ),
      obscureText: hide ? '*' : null,
      prefixIcon: widget.prefixIcon,
      onSubmit: widget.onSubmit,
      maxLength: widget.maxLength,
      enabled: widget.enabled,
      isDense: widget.isDense,
      isCollapsed: widget.isCollapsed,
      hintStyle: widget.hintStyle,
      textStyle: widget.textStyle,
      filled: widget.filled,
      fillColor: widget.fillColor,
      focusNode: widget.focusNode,
    );
  }
}
