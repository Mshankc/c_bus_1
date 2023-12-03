import 'package:care_bus/utils/address.dart';
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
              imageAddress: Address.kParentIcon,
              name: 'Parent',
              onPress: () {
                Navigator.pushNamed(context, '/adminstudentscreen');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureContainer(
                  imageAddress: Address.kBusListImage,
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
