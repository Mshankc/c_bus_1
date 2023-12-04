import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:care_bus/widgets/topcircularcontainer.dart';
import 'package:flutter/material.dart';

import '../widgets/customlistview.dart';
import '../widgets/featurescreenhead.dart';

class AdminRouteList extends StatefulWidget {
  const AdminRouteList({super.key});

  @override
  State<AdminRouteList> createState() => _AdminRouteListState();
}

class _AdminRouteListState extends State<AdminRouteList> {
  List name = ["Rajeev", "sugu", "anu"];
  List route = ["padinjarthata", "thalassery", "chundel"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kMainColor,
        body: Column(
          children: [
            const FeatureScreenHead(
              featureName: 'route list',
              icon: Icons.bus_alert_rounded,
            ),
            TopCircularContainer(
              color: Colors.white,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return CustomListView(
                    nameOrNumber: name[index],
                    routeOrAddress: route[index],
                    driverOrRoute: "lateef",
                    onPress: () => Navigator.of(context).pushNamed(Routename.itemInfo,arguments: name[index]),
                    leadingIcon: Address.kBusListImage,
                  );
                }),
                scrollDirection: Axis.vertical,
                //   children: [
                //     CustomListView(
                //       nameOrNumber: '1',
                //       routeOrAddress: 'padinjarathara',
                //       driverOrRoute: 'latheef',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '2',
                //       routeOrAddress: 'kalpetta',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '3',
                //       routeOrAddress: 'venniyode',
                //       driverOrRoute: 'abu',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '4',
                //       routeOrAddress: 'kuppadithara',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '5',
                //       routeOrAddress: 'panthipotil',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '6',
                //       routeOrAddress: 'varambetta',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '7',
                //       routeOrAddress: 'kalpetta',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '8',
                //       routeOrAddress: 'kalpetta',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '9',
                //       routeOrAddress: 'kalpetta',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //     CustomListView(
                //       nameOrNumber: '10',
                //       routeOrAddress: 'kalpetta',
                //       driverOrRoute: 'arshad',
                //       onPress: () {},
                //       leadingIcon: Address.kBusListImage,
                //     ),
                //   ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
