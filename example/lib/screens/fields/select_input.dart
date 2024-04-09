import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/select_input_widget.dart';

class SelectInputScreen extends StatefulWidget {
  final SelectInputController controller = SelectInputController();
  SelectInputScreen({
    super.key,
  });

  @override
  State<SelectInputScreen> createState() => _SelectInputScreenState();
}

class _SelectInputScreenState extends State<SelectInputScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
