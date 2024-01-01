import 'dart:async';
import 'package:care_bus/screens/login_screen.dart';
import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/app_strings.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    checkUserLoggedIn();
  }

  void checkUserLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    Timer(const Duration(seconds: 3), () {
      if (isLoggedIn) {
        // User is logged in, navigate to home screen based on user role
        String? userRole = prefs.getString('userRole');
        navigateToHomeScreen(userRole!);
      } else {
        // User is not logged in, navigate to login screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      }
    });
  }

  void navigateToHomeScreen(String userRole) {
    if (userRole.toLowerCase() == 'parent') {
      Navigator.pushReplacementNamed(context, '/parenthomescreen');
    } else if (userRole.toLowerCase() == 'driver') {
      Navigator.pushReplacementNamed(context, '/driverhomescreen');
    } else {
      // Handle unknown user role or any other cases
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                'images/building_bg.png',
                fit: BoxFit.fill,
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(AppStrings.appName,
                      style: AppTextStyles.kSplashHeader),
                ),
              ),
            ],
          ),
          Image.asset(Address.kMainBusImage),
        ],
      ),
    );
  }
}
