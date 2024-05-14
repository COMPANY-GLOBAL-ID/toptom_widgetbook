import 'package:widgetbook/widgetbook.dart';
import '../screens/checkbox_screen.dart';
import '../screens/fields/multi_select_input_screen.dart';
import '../screens/fields/password_screen.dart';
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
    name: 'Forms',
    useCases: [
      WidgetbookUseCase(
        name: 'Checkbox',
        builder: (context) => const CheckboxScreen(),
      ),
      WidgetbookUseCase(
        name: 'Radio',
        builder: (context) => const CheckboxScreen(),
      ),
      WidgetbookUseCase(
        name: 'Input',
        builder: (context) => const InputScreen(),
      ),
      WidgetbookUseCase(
        name: 'Password Input',
        builder: (context) => const PasswordScreen(),
      ),
      WidgetbookUseCase(
        name: 'Select',
        builder: (context) => SelectInputScreen(),
      ),
      WidgetbookUseCase(
        name: 'Multi Select',
        builder: (context) => const MultiSelectInputScreen(),
      ),
      WidgetbookUseCase(
        name: 'Double Input',
        builder: (context) => DoubleInputScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Statuses',
    useCases: [
      WidgetbookUseCase(
        name: 'Badge',
        builder: (context) => const BadgeScreen(),
      ),
    ],
  ),

];
