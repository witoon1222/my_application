import 'package:my_application/screen/home/home_screen.dart';
import 'package:my_application/screen/home/profile_screen.dart';
import 'package:my_application/screen/home/settings.dart';
import 'package:flutter/material.dart';

class BottomMenu {
  String title;
  IconData icon;
  Widget screen;

  BottomMenu({required this.title, required this.icon, required this.screen});
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<BottomMenu> bottomMenu = [
    BottomMenu(title: 'Home', icon: Icons.home, screen: const HomeScreen()),
    BottomMenu(
        title: 'Settings', icon: Icons.settings, screen: const Settings()),
    BottomMenu(title: 'Profile', icon: Icons.person, screen: ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bottomMenu[_selectedIndex].title),
      ),
      body: bottomMenu[_selectedIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (Value) {
          setState(() {
            _selectedIndex = Value;
          });
        },
        items: bottomMenu.map((menu) {
          return BottomNavigationBarItem(
            icon: Icon(menu.icon),
            label: menu.title,
          );
        }).toList(),
      ),
    );
  }
}
