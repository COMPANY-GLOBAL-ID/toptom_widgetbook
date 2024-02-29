
import 'package:widgetbook/widgetbook.dart';

import '../screens/screens.dart';

final directories = [
  WidgetbookComponent(
    name: 'Styled',
    useCases: [
      WidgetbookUseCase(
          name: 'Border Radius',
          builder: (context) => const BorderRadiusScreen()
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Buttons',
    useCases: [
      WidgetbookUseCase(
          name: 'Button',
          builder: (context) => const ButtonScreen()
      ),
      WidgetbookUseCase(
          name: 'Icon Button',
          builder: (context) => const IconButtonScreen()
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Status',
    useCases: [
      WidgetbookUseCase(
          name: 'Notification',
          builder: (context) => const NotificationScreen()
      ),
      WidgetbookUseCase(
          name: 'Badge',
          builder: (context) => const BadgeScreen()
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Inputs',
    useCases: [
      WidgetbookUseCase(
          name: 'Text Area',
          builder: (context) => const TextAreaScreen()
      ),
      WidgetbookUseCase(
          name: 'Input',
          builder: (context) => const InputScreen()
      ),
      WidgetbookUseCase(
          name: 'Double Input',
          builder: (context) => const DoubleInputScreen()
      ),
    ],
  ),
];