import 'package:care_bus/widgets/feature_container.dart';
import 'package:care_bus/widgets/user_home_container.dart';
import 'package:flutter/material.dart';

class ParentHomePage extends StatefulWidget {
  const ParentHomePage({super.key});

  @override
  State<ParentHomePage> createState() => _ParentHomePageState();
}

class _ParentHomePageState extends State<ParentHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeContainer(
              imageAddress: 'images/parent_logo.png',
              name: 'Parent',
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
