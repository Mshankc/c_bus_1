import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:care_bus/screens/driver/present_students_list_screen.dart';
import 'package:care_bus/utils/app_text_styles.dart';
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("CARE BUS",style: AppTextStyles.kDefaultHeaderLG,),
        leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: Image.asset(
                Address.kDriverIcon,
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