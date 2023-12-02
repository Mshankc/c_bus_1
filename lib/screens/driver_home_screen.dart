import 'package:care_bus/widgets/feature_container.dart';
import 'package:care_bus/widgets/user_home_container.dart';
import 'package:flutter/material.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({super.key});

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeContainer(
              imageAddress: 'images/driver.png',
              name: 'Driver',
              onPress: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureContainer(
                  imageAddress: 'images/bus_route.png',
                  featureName: 'Route',
                  onPress: () {},
                ),
                FeatureContainer(
                  imageAddress: 'images/attendance_logo.png',
                  featureName: 'Attendance',
                  onPress: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
