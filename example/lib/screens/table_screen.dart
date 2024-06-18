import 'package:example/helper/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
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
            padding: const EdgeInsets.all(20),
            header: const TableRow(children: [
              TableCellWidget(child: Text("ID")),
              TableCellWidget(child: Text("Name")),
              TableCellWidget(child: Text("Role")),
              TableCellWidget(
                  child: Text(
                      "sdjaksdklasfjasklfasjkfljaskdjaskldjaksldjklasdjklasdjkasdjkasldjklasdkl")),
            ]),
            items: List.generate(
              10,
                  (index) => index,
            ),
            builder: (index) {
              return TableRow(children: [
                TableCellWidget(child: Text(index.toString())),
                const TableCellWidget(child: Text("Иванов Иван")),
                const TableCellWidget(child: Text("Pidor")),
                const TableCellWidget(
                    child: Text(
                        "sdjaksdklasfjasklfasjkfljaskdjaskldjaksldjklasdjklasdjkasdjkasldjklasdkl")),
              ]);
            })
      ],
    );
  }
}
