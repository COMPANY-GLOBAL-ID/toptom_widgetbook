import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/top_kit/components/status_widget.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';


class BadgeScreen extends StatelessWidget {
  const BadgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text("Primary Badge"),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text', color: ColorKit.badgeColorInfo,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text', color: ColorKit.badgeColorInfo,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus4,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus4,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorError,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text', color: ColorKit.badgeColorError,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.primaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.primaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          const Text("Secondary Badge"),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorInfo,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorInfo,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus2,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus3,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorStatus3,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.colorErrorPrimary,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.colorErrorPrimary,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BadgeWidget.secondaryM(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
              const SizedBox(width: 8,),
              BadgeWidget.secondaryS(
                statusText: 'Status text',
                color: ColorKit.badgeColorWarning,
              ),
            ],
          ),
          const SizedBox(height: 20,),
          StatusWidget(
            svgIcon: IconsKit.basket,
            onPressed: () {},
            title: "Корзина пуста",
            description: "Мы активно работаем над расширением ассортимента, и скоро здесь появятся новые товары. Пожалуйста, следите за обновлениями нашего сайта!",
          ),
          const SizedBox(height: 20,),
          StatusWidget(
            svgIcon: IconsKit.category,
            onPressed: () {},
            title: "В данной категории отсутствуют товары",
            description: "К сожалению, ваша корзина пуста. Пожалуйста, добавьте товары, чтобы завершить покупку",
          ),
          const SizedBox(height: 20,),
          StatusWidget(
            svgIcon: IconsKit.order,
            onPressed: () {},
            title: "У вас пока что нет заказов :(",
            description: "Здесь будут отображаться ваши заказы",
          ),
        ],
      ),
    );
  }
}
