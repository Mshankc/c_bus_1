import 'package:care_bus/screens/admin_home_screen.dart';
import 'package:care_bus/screens/admin_route_list_screen.dart';
import 'package:care_bus/screens/admin_signup_screen.dart';
import 'package:care_bus/screens/admin_student_list_screen.dart';
import 'package:care_bus/screens/driver_home_screen.dart';
import 'package:care_bus/screens/driver_signup_screen.dart';
import 'package:care_bus/screens/login_screen.dart';
import 'package:care_bus/screens/parent_home_screen.dart';
import 'package:care_bus/screens/parent_signup_screen.dart';
import 'package:care_bus/screens/splashscreen.dart';
import 'package:care_bus/screens/user_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InitialPage(),
      routes: {
        '/userselectionscreen': (context) => const UserSelection(),
        '/loginscreen': (context) => const UserLogin(),
        '/parenthomescreen': (context) => const ParentHomePage(),
        '/parentloginscreen': (context) => const ParentLogin(),
        '/driverloginscreen': (context) => const DriverLogin(),
        '/driverhomescreen': (context) => const DriverHomePage(),
        '/adminloginscreen': (context) => const AdminLogin(),
        '/adminhomescreen': (context) => const AdminHomePage(),
        '/adminroutescreen': (context) => const AdminRouteList(),
        '/adminstudentscreen': (context) => const AdminStudentList(),
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
