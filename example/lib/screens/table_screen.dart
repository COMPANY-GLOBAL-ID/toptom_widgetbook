import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class TableScreen extends StatelessWidget {

  TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("Table", style: ThemeCore.of(context).typography.h3),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("TableWidget",
                      style: ThemeCore.of(context).typography.paragraphBig),
                ],
              ),
            ),
            TableWidget<int>(
              padding: EdgeInsets.all(20),
              header: TableRow(
                children: [
                  TableCellWidget(child: Text("ID")),
                  TableCellWidget(child: Text("Name")),
                  TableCellWidget(child: Text("Role")),
                  TableCellWidget(child: Text("sdjaksdklasfjasklfasjkfljaskdjaskldjaksldjklasdjklasdjkasdjkasldjklasdkl")),
                ]
              ),
              items: List.generate(
                10,
                (index) => index,
              ),
              builder: (index) {
                return TableRow(
                  children: [
                    TableCellWidget(child: Text(index.toString())),
                    TableCellWidget(child: Text("Иванов Иван")),
                    TableCellWidget(child: Text("Pidor")),
                    TableCellWidget(child: Text("sdjaksdklasfjasklfasjkfljaskdjaskldjaksldjklasdjklasdjkasdjkasldjklasdkl")),
                  ]
                );
              }
            )
          ],
        ),
      ),
    );
  }
}
