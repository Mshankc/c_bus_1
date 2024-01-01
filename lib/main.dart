
import 'package:care_bus/firebase_options.dart';
import 'package:care_bus/screens/driver/driver_home_screen.dart';
import 'package:care_bus/screens/item_info.dart';
import 'package:care_bus/screens/login_screen.dart';
import 'package:care_bus/screens/parent/parent_home_screen.dart';
import 'package:care_bus/screens/splashscreen.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main()async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

);
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
