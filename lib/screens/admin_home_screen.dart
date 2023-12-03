import 'package:care_bus/utils/address.dart';
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
              imageAddress: Address.kAdminLogo,
              name: 'Admin',
              onPress: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeatureContainer(
                  imageAddress: Address.kBusRouteIcon,
                  featureName: 'Route list',
                  onPress: () {},
                ),
                FeatureContainer(
                  imageAddress: Address.kStdListImage,
                  featureName: 'Student\'s list',
                  onPress: () {
                    Navigator.pushNamed(context, '/adminstudentscreen');
                  },
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: FeatureContainer(
                  imageAddress: Address.kDriverIcon,
                  featureName: 'Driver\'s list',
                  onPress: () {
                    Navigator.pushNamed(context, '/adminroutescreen');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
