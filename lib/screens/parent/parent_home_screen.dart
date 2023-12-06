import 'package:care_bus/screens/admin_student_list_screen.dart';
import 'package:care_bus/screens/login_screen.dart';
import 'package:care_bus/screens/parent/parent_child_list_screen.dart';
import 'package:care_bus/screens/parent/parent_map_screen.dart';
import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class ParentHomeScreen extends StatefulWidget {
  const ParentHomeScreen({super.key});
  @override
  State<ParentHomeScreen> createState() => _ParentHomeScreenState();
}

class _ParentHomeScreenState extends State<ParentHomeScreen> {
  int _currentIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _pages = [
    const ParentChildList(),
    const ParentMapScreen(),
    const AdminStudentList(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            child: Image.asset(
              Address.kParentIcon,
            ),
            onTap: () {}, //TODO:implement logout function
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_rounded,
              color: Color(0xFFFFB344),
              size: 36,
            ),
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        activeColor: AppColors.kActiveNavColor,
        icons: const [Icons.home, Icons.map, Icons.chat],
        iconSize: 32,
        gapWidth: 8,
        splashSpeedInMilliseconds: 200,
        activeIndex: _currentIndex,
        onTap: _navigateBottomBar,
        splashRadius: 2,
        blurEffect: true,
      ),
    );
  }
}
