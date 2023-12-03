import 'dart:async';

import 'package:care_bus/screens/user_selection_screen.dart';
import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
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

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const UserSelection(),
        ),
      );
    });
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
