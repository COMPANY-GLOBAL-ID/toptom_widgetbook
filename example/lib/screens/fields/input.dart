import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Input", style: ThemeCore.of(context).typography.h3),
            const SizedBox(
              height: 10,
            ),
            TextFieldWidget(
              suffixIcon: const Icon(Icons.search),
              prefixIcon: const Icon(Icons.search),
              label: "TextFieldWidget",
              controller: textEditingController,
              enabled: false,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.description",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.description(
              suffixIcon: const Icon(Icons.search),
              prefixIcon: const Icon(Icons.search),
              label: "TextFieldWidget.description",
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.phone",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.phone(
              hintText: 'Hint',
              suffixIcon: const Icon(Icons.search),
              prefixIcon: const Icon(Icons.search),
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.email",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.email(
              suffixIcon: const Icon(Icons.search),
              prefixIcon: const Icon(Icons.search),
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.number",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.number(
              suffixIcon: const Icon(Icons.search),
              prefixIcon: const Icon(Icons.search),
              errorText: 'dsadasdasdas',
              controller: textEditingController,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("TextFieldWidget.date",
                style: ThemeCore.of(context).typography.paragraphBig),
            TextFieldWidget.date(
              suffixIcon: const Icon(Icons.search),
              prefixIcon: const Icon(Icons.search),
              controller: textEditingController,
              enabled: false,
            ),
            Text(
              "SelectInputWidget",
              style: ThemeCore.of(context).typography.paragraphBig,
            ),
            Row(
              children: [
                Expanded(
                  child: SelectInputWidget<CategoryModel>(
                    label: const Text('Select gender'),
                    items: CategoryModel.generateList(),
                    builder: (item, hasError) => DropdownMenuItem(
                      value: item,
                      child: Text(item.title),
                    ),
                    controller: SelectInputController(),
                  ),
                ),
                Expanded(
                  child: TextFieldWidget(
                    label: "TextFieldWidget",
                    errorText: 'fasdfdsfgsdgsfgs',
                    controller: textEditingController,
                  ),
                ),
              ],
            ),
            Text(
              "MultiSelectInput",
              style: ThemeCore.of(context).typography.paragraphBig,
            ),
            MultiSelectInput<CategoryModel>(
              clearText: 'Clear',
              label: 'Select',
              hint: const Text('Select'),
              items: CategoryModel.generateList(),
              builder: (item, hasError) => DropdownMenuItem(
                value: item,
                child: Text(item.title),
              ),
              errorText: 'sadadsdsadasd',
              controller: MultiSelectController(),
              builderChip: (value) {
                return BadgeWidget(
                  type: BadgeType.outlined,
                  color: BadgeColor.neutral,
                  size: BadgeSize.small,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(value.title),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.close),
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryModel {
  final int id;
  final String title;

  CategoryModel({required this.id, required this.title});

  static List<CategoryModel> generateList() =>
      List.generate(5, (index) => CategoryModel(id: 1, title: 'AAAAAAAA'));
}
