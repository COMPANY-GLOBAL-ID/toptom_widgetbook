import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/tooltip_widget.dart';

class SortingWidget extends StatefulWidget {
  final int numberOfOptions;

  const SortingWidget({Key? key, required this.numberOfOptions}) : super(key: key);

  @override
  _SortingWidgetState createState() => _SortingWidgetState();
}

class _SortingWidgetState extends State<SortingWidget> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    List<String> options =
    List.generate(widget.numberOfOptions, (index) => 'Option ${index + 1}');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...options.map(
              (option) => RadioListTile(
            title: Text(option),
            value: option,
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (selectedOption != null) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ToolTipWidget(
                          title:"Подтвердить",
                          content: Text("Вы выбрали: $selectedOption"),
                        );
                      },
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ToolTipWidget(
                          title: "Ошибка",
                          content: Text("Пожалуйста выберите опцию")
                        );
                      },
                    );
                  }
                },
                child: const Text('Подтвердить'),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedOption = null;
                });
              },
              child: const Text('Отмена'),
            ),
          ],
        ),
      ],
    );
  }
}
