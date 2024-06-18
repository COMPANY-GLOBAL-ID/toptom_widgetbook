import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

import '../helper/screen_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWidget(
      children: [
        StatusWidget(
          icon: Icon(
            ToptomIcons.category,
            color: ThemeCore.of(context).color.scheme.white,
          ),
          title: "В данной категории отсуствую товары",
          description:
          "К сожалению, ваша корзина пуста. Пожалуйста добавьте товары, чтобы завершить покупку",
          onPressed: () {},
          child: const Text('Добавить товары'),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
