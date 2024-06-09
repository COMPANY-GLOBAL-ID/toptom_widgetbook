import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toptom_widgetbook/kit/export.dart';

export 'typography_kit.dart';
export 'padding_kit.dart';
export 'styles/styles.dart';
export 'toptom_icons.dart';
export 'colors/color_kit.dart';

class ThemeDataCore {
  final TypographyKit typography;
  final ColorKit color;
  final BorderKit border;
  final RadiusKit radius;
  final PaddingKit padding;

  const ThemeDataCore({
    this.padding = const PaddingKit(),
    this.typography = const TypographyKit(),
    this.color = const ColorKit(),
    this.border = const BorderKit(
      borderDefaultLg: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      borderDefaultM: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
      borderDefaultS: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))),
      defaultTextInputBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(
          color: Color(0xFFE0E0E0),
          width: 1,
        ),
      ),
    ),
    this.radius = const RadiusKit(),
  });

  ThemeDataCore copyWith({
    TypographyKit? typography,
    ColorKit? color,
    BorderKit? border,
    RadiusKit? radius,
  }) {
    return ThemeDataCore(
      typography: typography ?? this.typography,
      color: color ?? this.color,
      border: border ?? this.border,
      radius: radius ?? this.radius,
    );
  }
}

class ThemeCore extends InheritedWidget {
  ThemeDataCore data;

  ThemeCore({
    super.key,
    required super.child,
    this.data = const ThemeDataCore(),
  });

  static ThemeDataCore of(BuildContext context) {
    final ThemeDataCore? result =
        context.dependOnInheritedWidgetOfExactType<ThemeCore>()?.data;
    assert(result != null, 'No ThemeCore found in context');
    return result!;
  }

  static void set(BuildContext context, ThemeDataCore data) {
    context.dependOnInheritedWidgetOfExactType<ThemeCore>()?.data = data;
  }

  @override
  bool updateShouldNotify(ThemeCore oldWidget) => data != oldWidget.data;
}

class ThemeController with ChangeNotifier {
  ThemeDataCore darkTheme;
  ThemeDataCore defaultTheme;
  ValueNotifier<ThemeDataCore> _currentTheme;

  ThemeController({required this.defaultTheme, required this.darkTheme})
      : _currentTheme = ValueNotifier(defaultTheme);

  ValueNotifier<ThemeDataCore> get currentTheme => _currentTheme;

  void loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String themeKey = prefs.getString('themeKey') ?? 'default';
    _currentTheme.value = _getThemeData(themeKey);
  }

  void switchTheme(String themeKey) async {
    _currentTheme.value = _getThemeData(themeKey);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('themeKey', themeKey);
    notifyListeners();
  }

  ThemeDataCore _getThemeData(String themeKey) {
    return themeKey == 'dark' ? darkTheme : defaultTheme;
  }
}

class ThemeControllerProvider extends InheritedWidget {
  final ThemeController controller;
  const ThemeControllerProvider(
      {super.key, required super.child, required this.controller});

  static ThemeController of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ThemeControllerProvider>()!
        .controller;
  }

  @override
  bool updateShouldNotify(ThemeControllerProvider oldWidget) =>
      controller != oldWidget.controller;
}

class ThemeSwitcher extends StatefulWidget {
  final ThemeDataCore startData;
  final Widget child;

  const ThemeSwitcher(
      {super.key, required this.child, this.startData = const ThemeDataCore()});

  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();

  static _ThemeSwitcherState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeSwitcherState>();
  }
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  ThemeDataCore? _themeData;

  void switchTheme(ThemeDataCore newTheme) {
    setState(() {
      _themeData = newTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeCore(
      data: _themeData ?? widget.startData,
      child: widget.child,
    );
  }
}
