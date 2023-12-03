import 'package:care_bus/utils/address.dart';
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
              imageAddress: Address.kDriverIcon,
              name: 'Driver',
              onPress: () {
                Navigator.pushNamed(context, '/adminstudentscreen');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureContainer(
                  imageAddress: Address.kBusRouteIcon,
                  featureName: 'Route',
                  onPress: () {
                    Navigator.pushNamed(context, '/adminroutescreen');
                  },
                ),
                FeatureContainer(
                  imageAddress: Address.kAttendanceLogo,
                  featureName: 'Attendance',
                  onPress: () {
                    Navigator.pushNamed(context, '/adminstudentscreen');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
