import 'package:care_bus/screens/parent_login_screen.dart';
import 'package:care_bus/screens/splashscreen.dart';
import 'package:care_bus/screens/user_selection_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        '/parentloginscreen': (context) => const ParentLogin(),
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
