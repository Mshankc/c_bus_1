import 'package:care_bus/screens/user_selection_screen.dart';
import 'package:care_bus/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../utils/app_strings.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserSelection(),
                  ),
                );
              },
              icon: const Icon(Icons.navigate_next),
            ),
          ],
        ),
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
            Image.asset('images/bus.png'),
          ],
        ),
      ),
    );
  }
}
