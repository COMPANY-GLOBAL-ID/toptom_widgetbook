// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:toptom_widgetbook/src/components/buttons/custom_buttons.dart'
    as _i5;
import 'package:toptom_widgetbook/src/components/buttons/elevated_button.dart'
    as _i6;
import 'package:toptom_widgetbook/src/components/buttons/outlined_button.dart'
    as _i7;
import 'package:toptom_widgetbook/src/components/form/fields/checkbox.dart'
    as _i2;
import 'package:toptom_widgetbook/src/components/form/fields/fields.dart'
    as _i4;
import 'package:toptom_widgetbook/src/components/snackbars.dart' as _i3;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'material',
    children: [
      _i1.WidgetbookLeafComponent(
        name: 'Checkbox',
        useCase: _i1.WidgetbookUseCase(
          name: 'Checkbox',
          builder: _i2.textFields,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'SnackBar',
        useCase: _i1.WidgetbookUseCase(
          name: 'SnackBars',
          builder: _i3.textFields,
        ),
      ),
      _i1.WidgetbookLeafComponent(
        name: 'TextField',
        useCase: _i1.WidgetbookUseCase(
          name: 'Text Fields',
          builder: _i4.textFields,
        ),
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookComponent(
        name: 'Container',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Custom Buttons',
            builder: _i5.outlinedButton,
          ),
          _i1.WidgetbookUseCase(
            name: 'Elevated Button',
            builder: _i6.outlinedButton,
          ),
          _i1.WidgetbookUseCase(
            name: 'Outlined Button',
            builder: _i7.outlinedButton,
          ),
        ],
      )
    ],
  ),
];
