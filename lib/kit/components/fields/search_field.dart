import 'package:flutter/material.dart';

import 'text_field.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmit;
  final dynamic Function() onClear;
  final String? hint;

  const SearchField({
    super.key,
    required this.controller,
    required this.onSubmit,
    required this.onClear,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return ToptomTextField(
      prefixIcon: const Icon(
        Icons.search,
        color: Color.fromRGBO(112, 112, 112, 1),
      ),
      hintText: hint,
      controller: controller,
      onSubmit: onSubmit,
      suffixIcon: ValueListenableBuilder(
        valueListenable: controller,
        builder: (context, value, child) => value.text.isEmpty
            ? const Offstage()
            : GestureDetector(
                onTap: onClear,
                child: const Icon(Icons.cancel),
              ),
      ),
    );
  }
}
