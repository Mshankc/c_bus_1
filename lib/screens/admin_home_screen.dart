import 'package:flutter/material.dart';

import 'package:care_bus/widgets/feature_container.dart';
import 'package:care_bus/widgets/user_home_container.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeContainer(
              imageAddress: 'images/admin.png',
              name: 'Admin',
              onPress: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureContainer(
                  imageAddress: 'images/bus_route.png',
                  featureName: 'Route list',
                  onPress: () {},
                ),
                FeatureContainer(
                  imageAddress: 'images/students.png',
                  featureName: 'Student\'s list',
                  onPress: () {},
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: FeatureContainer(
                  imageAddress: 'images/driver.png',
                  featureName: 'Driver\'s list',
                  onPress: () {}),
            )
          ],
        ),
      ),
    );
  }
}
