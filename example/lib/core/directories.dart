import 'package:widgetbook/widgetbook.dart';
import '../screens/card_screen.dart';
import '../screens/checkbox_screen.dart';
import '../screens/screens.dart';
import '../screens/typography_screen.dart';

final directories = [
  WidgetbookComponent(
    name: 'Styled',
    useCases: [
      WidgetbookUseCase(
        name: 'Border Radius',
        builder: (context) => const BorderRadiusScreen(),
      ),
      WidgetbookUseCase(
        name: 'Shadow',
        builder: (context) => const ShadowScreen(),
      ),
      WidgetbookUseCase(
        name: 'Typography',
        builder: (context) => const TypographyScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Buttons',
    useCases: [
      WidgetbookUseCase(
        name: 'Button',
        builder: (context) => const ButtonScreen(),
      ),
      WidgetbookUseCase(
        name: 'Icon Button',
        builder: (context) => const IconButtonScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Status',
    useCases: [
      WidgetbookUseCase(
        name: 'Notification',
        builder: (context) => const NotificationScreen(),
      ),
      WidgetbookUseCase(
        name: 'Status',
        builder: (context) => const StatusPage(),
      ),
      WidgetbookUseCase(
        name: 'Badge',
        builder: (context) => const BadgeScreen(),
      ),
      WidgetbookUseCase(
        name: 'ToolTip',
        builder: (context) => const ToolTipScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Inputs',
    useCases: [
      WidgetbookUseCase(
        name: 'Text Area',
        builder: (context) => const TextAreaScreen(),
      ),
      WidgetbookUseCase(
        name: 'Input',
        builder: (context) => const InputScreen(),
      ),
      WidgetbookUseCase(
        name: 'Double Input',
        builder: (context) => const DoubleInputScreen(),
      ),
      WidgetbookUseCase(
        name: 'Select Input',
        builder: (context) => SelectInputScreen(),
      ),
      WidgetbookUseCase(
        name: 'Checkbox',
        builder: (context) => const CheckboxScreen(),
      )
    ],
  ),
  WidgetbookComponent(
    name: 'State',
    useCases: [
      WidgetbookUseCase(
        name: 'Stepper',
        builder: (context) => StepperPage(),
      ),
      WidgetbookUseCase(
        name: 'Sorting',
        builder: (context) => const SortingPage(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Container',
    useCases: [
      WidgetbookUseCase(
        name: 'Card',
        builder: (context) => const CardScreen(),
      ),
    ],
  ),
];
