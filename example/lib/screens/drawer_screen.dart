import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/components/drawer/drawer_item.dart';
import 'package:widgetbook/widgetbook.dart';

class DrawerItemScreen extends StatelessWidget {
  const DrawerItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String header = context.knobs.string(label: 'drawer header' , initialValue: 'header');
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              header,
            ),
          ),
          DrawerItem(
            icon:const Icon(Icons.date_range),
            text: 'Screen name',
            onPressed: () {
            },
            selected: false,
          ),
        ],
      ),
    );
  }
}
