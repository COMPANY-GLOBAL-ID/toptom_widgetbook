import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class LabelTextField extends StatefulWidget {
  const LabelTextField({
    super.key,
    this.controller,
    this.maxLength,
    this.enabled,
    this.onSubmit,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.keyboardType,
    this.inputFormates,
    this.error,
    required this.title,
    this.errorText,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextEditingController? controller;
  final String title;
  final int? maxLength;
  final bool? enabled;
  final Function(String)? onSubmit;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormates;
  final TextCapitalization textCapitalization;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? error;
  final String? errorText;

  @override
  State<LabelTextField> createState() => _LabelTextFieldState();
}

class _LabelTextFieldState extends State<LabelTextField> {
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_focusNode),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: ThemeCore.of(context).color.scheme.strokePrimary,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.title,
                      style: ThemeCore.of(context).typography.label,
                    ),
                    TextField(
                      style: ThemeCore.of(context).typography.label,
                      enabled: widget.enabled,
                      focusNode: _focusNode,
                      onSubmitted: widget.onSubmit,
                      onChanged: widget.onChanged,
                      controller: widget.controller,
                      maxLength: widget.maxLength,
                      keyboardType: widget.keyboardType,
                      inputFormatters: widget.inputFormates,
                      textCapitalization: widget.textCapitalization,
                      decoration: InputDecoration(
                        error: widget.error,
                        isCollapsed: true,
                        prefixIcon: widget.prefixIcon,
                        suffixIcon: widget.suffixIcon,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Visibility(
            visible: widget.errorText != null,
            child: Text(
              widget.errorText ?? '',
              style: TextStyle(
                  color: ThemeCore.of(context).color.badgeColor.error),
            ),
          ),
        )
      ],
    );
  }
}
