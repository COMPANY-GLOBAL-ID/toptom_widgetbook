import 'package:example/screens/drawer_screen.dart';
import 'package:example/screens/fields/inside_input_screen.dart';
import 'package:example/screens/fields/multi_select_drop_down_screen.dart';
import 'package:example/screens/gallery.dart';
import 'package:example/screens/status_page_screen.dart';
import 'package:example/screens/switcher_screen.dart';
import 'package:widgetbook/widgetbook.dart';
import '../screens/checkbox_screen.dart';
import '../screens/fields/multi_select_input_screen.dart';
import '../screens/fields/password_screen.dart';
import '../screens/screens.dart';
import '../screens/typography_screen.dart';
import '../screens/update_theme_screen.dart';

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
    name: 'Drawer widgets',
    useCases: [
      WidgetbookUseCase(
        name: 'Drawer Item',
        builder: (context) => const DrawerItemScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Modals',
    useCases: [
      WidgetbookUseCase(
        name: 'Modal bottom sheet',
        builder: (context) => const ModalBottomSheetScreen(),
      ),
      WidgetbookUseCase(
        name: 'Alert Dialog',
        builder: (context) => const AlertDialogScreen(),
      ),
      WidgetbookUseCase(
        name: 'Custom Date Picker',
        builder: (context) => const DatePickerScreen(),
      ),
      WidgetbookUseCase(
        name: 'Dragble modal bottom sheet',
        builder: (context) => const DraggableModalBottomSheetScreen(),
      ),
      WidgetbookUseCase(
        name: 'Selector modal bottom sheet',
        builder: (context) => const SelectorModalBottomSheetScreen(),
      ),
      WidgetbookUseCase(
        name: 'Item selector widget',
        builder: (context) => const ItemSelectorScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Status page ',
    useCases: [
      WidgetbookUseCase(
        name: 'Status page widget',
        builder: (context) => const StatusPageScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Switchers',
    useCases: [
      WidgetbookUseCase(
        name: 'Notification Switcher',
        builder: (context) => const SwitcherScreen(),
      ),
    ],
  ),
  WidgetbookComponent(
    name: 'Gallery',
    useCases: [
      WidgetbookUseCase(
        name: 'Gallery widget',
        builder: (context) => const GalleryScreen(),
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
      WidgetbookUseCase(
        name: 'Mutli Select Drop Down',
        builder: (context) => const MultiSelectDropDownScreen(),
      ),
        WidgetbookUseCase(
        name: 'Inside Input ',
        builder: (context) => const InsideInputScreen(),
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
  WidgetbookComponent(
    name: 'THEME',
    useCases: [
      WidgetbookUseCase(
        name: 'Update Theme Screen',
        builder: (context) => const UpdateThemeScreen(),
      ),
    ],
  ),
];
