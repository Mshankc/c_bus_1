import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:care_bus/screens/driver/present_students_list_screen.dart';
import 'package:flutter/material.dart';
import '../../utils/address.dart';
import '../../utils/colors.dart';
import '../../widgets/customdrawer.dart';
import '../notification_screen.dart';
import 'Driver_map_screen.dart';
import 'driver_chat_screen.dart';
import 'driver_student_list_screen.dart';

class DriverHomeScreen extends StatefulWidget {
  const DriverHomeScreen({Key? key}) : super(key: key);

  @override
  State<DriverHomeScreen> createState() => _DriverHomeScreenState();
}

class _DriverHomeScreenState extends State<DriverHomeScreen> {
  int _currentIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _pages = [
    const DriverStudentListScreen(),
    const PresentStudentsList(),
    const DriverMapScreen(),
    const DriverChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                Address.kDriverIcon,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationScreen()));
            },
            icon: const Icon(
              Icons.notifications_rounded,
              color: Color(0xFFFFB344),
              size: 36,
            ),
          ),
        ],
      ),
      body: _pages[_currentIndex],
      drawer: const CustomDrawer(
        driverOrParentName: 'Ashraf',
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        activeColor: AppColors.kActiveNavColor,
        icons: const [Icons.home, Icons.list_rounded, Icons.map, Icons.chat],
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
