import 'package:example/screens/modals/alert_dialog_screen.dart';
import 'package:example/screens/modals/date_picker_screen.dart';
import 'package:example/screens/drawer_screen.dart';
import 'package:example/screens/gallery.dart';
import 'package:example/screens/modals/draglbe_modal_bottom_sheet_screen.dart';
import 'package:example/screens/modals/modal_bottom_sheet_screen.dart';
import 'package:example/screens/status_page_screen.dart';
import 'package:example/screens/switcher_screen.dart';
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
        builder: (context) =>const  SwitcherScreen(),
      ),
    ],
  ),
   WidgetbookComponent(
    name: 'Gallery',
    useCases: [
      WidgetbookUseCase(
        name: 'Gallery widget',
        builder: (context) =>const  GalleryScreen(),
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
];
