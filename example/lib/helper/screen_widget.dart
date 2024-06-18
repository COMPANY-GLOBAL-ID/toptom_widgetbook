import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class ScreenWidget extends StatelessWidget {
  final List<Widget> children;

  const ScreenWidget({super.key, this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeCore.of(context).color.scheme.background,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(ThemeCore.of(context).padding.l),
        child: Column(
          children: children,
        ),
      ),
    );
  }

}