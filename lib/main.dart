import 'package:care_bus/firebase_options.dart';
import 'package:care_bus/screens/admin/admin_home_screen.dart';
import 'package:care_bus/screens/admin/admin_route_list_screen.dart';
import 'package:care_bus/screens/admin/admin_signup_screen.dart';
import 'package:care_bus/screens/admin/admin_student_list_screen.dart';
import 'package:care_bus/screens/driver/driver_home_screen.dart';
import 'package:care_bus/screens/driver/driver_signup_screen.dart';
import 'package:care_bus/screens/item_info.dart';
import 'package:care_bus/screens/login_screen.dart';
import 'package:care_bus/screens/parent/parent_home_screen.dart';
import 'package:care_bus/screens/parent_signup_screen.dart';
import 'package:care_bus/screens/splashscreen.dart';
import 'package:care_bus/screens/user_selection_screen.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main()async {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InitialPage(),
      routes: {
        '/userselectionscreen': (context) => const UserSelection(),
        '/loginscreen': (context) => const UserLogin(),
        '/parentloginscreen': (context) => const ParentLogin(),
        '/driverloginscreen': (context) => const DriverLogin(),
        '/adminloginscreen': (context) => const AdminLogin(),
        '/adminhomescreen': (context) => const AdminHomePage(),
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
