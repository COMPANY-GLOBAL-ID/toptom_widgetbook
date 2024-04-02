import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/kit/export.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          StatusWidget(
            icon: const Icon(ToptomIcons.basket, color: Colors.white),
            title: "Корзина пуста",
            description:
                "Мы активно работаем над расширением ассортимента, и скоро здесь появятся новые товары. Пожалуйста, следите за обновлениями нашего сайта!",
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          StatusWidget(
            icon: const Icon(ToptomIcons.category, color: Colors.white),
            title: "В данной категории отсуствую товары",
            description:
                "К сожалению, ваша корзина пуста. Пожалуйста добавьте товары, чтобы завершить покупку",
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          StatusWidget(
            icon: const Icon(ToptomIcons.order, color: Colors.white),
            title: "У вас пока что нет заказов :(",
            description: "Здесь будут отображаться ваши заказы.",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
