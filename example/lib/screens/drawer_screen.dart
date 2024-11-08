import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

class DrawerItemScreen extends StatelessWidget {
  const DrawerItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String header =
        context.knobs.string(label: 'drawer header', initialValue: 'header');
    final String text = context.knobs
        .string(label: 'drawer item', initialValue: 'drawer item widget');
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                header,
              ),
            ),
            DrawerItem(
              icon: const Icon(Icons.date_range),
              text: text,
              onPressed: () {
                snackBarBuilder(
                  context,
                  SnackBarOptions(title: 'hello'),
                );
              },
              selected: false,
            ),
          ],
        ),
      ),
      body: const Center(child: Text('swipe to right ')),
    );
  }
}
