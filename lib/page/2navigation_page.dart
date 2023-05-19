import 'package:flutter/material.dart';
import 'package:engenie/core/colors.dart';
import 'package:engenie/page/NavigationBarPages/User_Home.dart';
import 'package:engenie/page/NavigationBarPages/User_Notes.dart';
import 'package:engenie/page/NavigationBarPages/ProfilePages/User_Profile.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const UserHome(),
    const UserNotes(),
    const UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        backgroundColor: yellowNav,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
                color: _selectedIndex == 0
                    ? Colors.green.shade900
                    : Colors.grey.shade700,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.edit_note_outlined,
                size: 30,
                color: _selectedIndex == 1
                    ? Colors.green.shade900
                    : Colors.grey.shade700,
              ),
              label: 'Your Note'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_sharp,
                size: 30,
                color: _selectedIndex == 2
                    ? Colors.green.shade900
                    : Colors.grey.shade700,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
