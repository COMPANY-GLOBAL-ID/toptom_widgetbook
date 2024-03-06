import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/status_widget.dart';
import 'package:toptom_widgetbook/top_kit/constants_kit/icons_kit.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          StatusWidget(
            svgIcon: IconsKit.basket,
            title: "Корзина пуста",
            description: "Мы активно работаем над расширением ассортимента, и скоро здесь появятся новые товары. Пожалуйста, следите за обновлениями нашего сайта!",
            onPressed: () {},
          ),
          const SizedBox(height: 20,),
          StatusWidget(
            svgIcon: IconsKit.category,
            title: "В данной категории отсуствую товары",
            description: "К сожалению, ваша корзина пуста. Пожалуйста добавьте товары, чтобы завершить покупку",
            onPressed: () {},
          ),
          const SizedBox(height: 20,),
          StatusWidget(
            svgIcon: IconsKit.order,
            title: "У вас пока что нет заказов :(",
            description: "Здесь будут отображаться ваши заказы.",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
