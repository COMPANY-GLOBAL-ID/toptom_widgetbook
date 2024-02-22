import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toptom_widgetbook/presentation/export.dart';
import 'package:toptom_widgetbook/top_kit/export.dart';



class PresentationScreen extends StatefulWidget {
  const PresentationScreen({Key? key}) : super(key: key);

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ButtonScreen(),
    const IconButtonScreen(),
    const CaptionScreen(),
    const TextAreaScreen(),
    const BadgeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    const ColorFilter colorYellowStar = ColorFilter.mode(ColorKit.colorYelowStar, BlendMode.srcIn);
    const ColorFilter colorBlackBottom = ColorFilter.mode(ColorKit.closePressColor, BlendMode.srcIn);
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconsKit.home,colorFilter: colorYellowStar),
            icon: SvgPicture.asset(IconsKit.home,colorFilter: colorBlackBottom),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconsKit.catalog,colorFilter: colorYellowStar),
            icon: SvgPicture.asset(IconsKit.catalog,colorFilter: colorBlackBottom),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconsKit.starFilled,colorFilter: colorYellowStar),
            icon: SvgPicture.asset(IconsKit.starFilled,colorFilter: colorBlackBottom),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconsKit.chat,colorFilter: colorYellowStar),
            icon: SvgPicture.asset(IconsKit.chat, colorFilter: colorBlackBottom),
            label: 'Чаты',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconsKit.user,colorFilter: colorYellowStar,),
            icon: SvgPicture.asset(IconsKit.user,colorFilter: colorBlackBottom),
            label: 'Профиль',
          ),
        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}
