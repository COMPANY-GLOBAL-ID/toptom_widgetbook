import 'package:flutter/material.dart';
import 'package:toptom_widgetbook/toptom_widgetbook.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Card", style: ThemeCore.of(context).typography.h4),
            const SizedBox(
              height: 20,
            ),
            Text("CardWidget", style: ThemeCore.of(context).typography.h6),
            const SizedBox(
              height: 10,
            ),
            CardWidget(
              children: [
                Text(
                  'Выполнение простых заданий',
                  style: ThemeCore.of(context).typography.paragraphMedium,
                ),
                Text(
                  'Мне видно как человек работает, все отображается. Не волнуйтесь заданий много так же можете и с телеграмма работать. И если будет интересно, оставайтесь заработок хороший!',
                  style: ThemeCore.of(context)
                      .typography
                      .paragraphSmall
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BadgeWidget(
                      child: Text('Игры'),
                    ),
                    BadgeWidget(
                      child: Text('12 / 3 / 0'),
                    ),
                    BadgeWidget(
                      child: Text('3 Подзадачи'),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonIcon(
                      icon: ToptomIcons.add_small,
                      onPressed: () {},
                    ),
                    ButtonWidget(
                      child: Text('Взять'),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
