
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
];