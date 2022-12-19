import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/bottom_menu.provider.dart';
import '../screens/education.screen.dart';
import '../screens/experience.screen.dart';
import '../screens/personal.screen.dart';
import '../screens/skill.screen.dart';
import '../utilities/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  PageController _pageController = PageController();
  int _selectedScreen = 0;
  int _selectedScreenChanged = 0;
  final String _titleAppBar = 'Drive Profile';
  bool _selectedScreenCheck = true;

  final List<BottomNavigationBarItem> _listTabs =
      const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'ข้อมูลส่วนตัว',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.event_available_outlined),
      label: 'ประสบการณ์',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.school),
      label: 'การศึกษา',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.star),
      label: 'ทักษะ',
    ),
  ];

  List<Widget> _listScreens() {
    return const <Widget>[
      PersonalScreen(),
      ExperienceScreen(),
      EducationScreen(),
      SkillScreen(),
    ];
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var bottomMenu = Provider.of<BottomMenuProvider>(context, listen: true);
    onTabTapped(bottomMenu.getIndexNumber(), bottomMenu);

    if (_selectedScreen == _selectedScreenChanged) {
      setState(() {
        _selectedScreenCheck = true;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          _titleAppBar,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: const <Widget>[],
      ),
      body: SizedBox.expand(
        child: PageView(
            onPageChanged: (index) => setState(() {
                  if (_selectedScreenCheck == true) {
                    onTabTapped(index, bottomMenu);
                  }
                  _selectedScreenChanged = index;
                }),
            // physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: _listScreens()),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedScreen,
          type: BottomNavigationBarType.fixed,
          items: _listTabs,
          onTap: (index) => setState(() {
                _selectedScreenCheck = false;
                onTabTapped(index, bottomMenu);
              })),
    );
  }

  void onTabTapped(int index, bottomMenu) {
    setState(() {
      _selectedScreen = index;
      try {
        _pageController.animateToPage(index,
            duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
      } catch (ex) {}
      bottomMenu.setIndexNumber(index);
    });
  }
}
