import 'package:care_bus/screens/admin_route_list_screen.dart';

import 'package:care_bus/screens/admin_student_list_screen.dart';
import 'package:care_bus/screens/driver/driver_home_screen.dart';

import 'package:care_bus/screens/item_info.dart';
import 'package:care_bus/screens/login_screen.dart';
import 'package:care_bus/screens/parent/parent_home_screen.dart';
import 'package:care_bus/screens/splashscreen.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kMainBgColor,
      ),
      home: const InitialPage(),
      routes: {
        '/loginscreen': (context) => const LoginScreen(),
        '/parenthomescreen': (context) => const ParentHomeScreen(),
        '/driverhomescreen': (context) => const DriverHomeScreen(),
        '/adminroutescreen': (context) => const AdminRouteList(),
        '/adminstudentscreen': (context) => const AdminStudentList(),
        // add like this
        Routename.itemInfo: (context) => const ItemInfo(),
      },
    );
  }
}

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Splashscreen();
  }
}
//TODO:change main to InitialPage()
