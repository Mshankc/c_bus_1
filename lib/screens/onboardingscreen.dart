import 'package:care_bus/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../utils/app_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor:Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image.asset('images/building_bg.png')),
                Expanded(child: Image.asset('images/building_bg.png')),
              ],
            ),
            Text(AppStrings.AppName, style: AppTextStyles.kSplashHeader ,),
            Expanded(child: Image.asset('images/building_bg.png')),
          ],
        ),
      ),
    );
  }
}
