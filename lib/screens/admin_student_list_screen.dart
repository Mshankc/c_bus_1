import 'package:care_bus/utils/address.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/customlistview.dart';
import '../widgets/featurescreenhead.dart';
import '../widgets/topcircularcontainer.dart';

class AdminStudentList extends StatefulWidget {
  const AdminStudentList({super.key});

  @override
  State<AdminStudentList> createState() => _AdminStudentListState();
}

class _AdminStudentListState extends State<AdminStudentList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kMainColor,
        body: Column(
          children: [
            const FeatureScreenHead(
              featureName: 'Student\'s list',
              icon: Icons.playlist_add_check_circle_sharp,
            ),
            TopCircularContainer(
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CustomListView(
                    nameOrNumber: 'raju',
                    routeOrAddress: 'A.K House',
                    driverOrRoute: 'varambetta',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: 'aju',
                    routeOrAddress: 'Kalathil House',
                    driverOrRoute: 'Kalpetta',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '3',
                    routeOrAddress: 'venniyode',
                    driverOrRoute: 'abu',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '4',
                    routeOrAddress: 'kuppadithara',
                    driverOrRoute: 'arshad',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '5',
                    routeOrAddress: 'panthipotil',
                    driverOrRoute: 'arshad',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '6',
                    routeOrAddress: 'varambetta',
                    driverOrRoute: 'arshad',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '7',
                    routeOrAddress: 'kalpetta',
                    driverOrRoute: 'arshad',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '8',
                    routeOrAddress: 'kalpetta',
                    driverOrRoute: 'arshad',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '9',
                    routeOrAddress: 'kalpetta',
                    driverOrRoute: 'arshad',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                  CustomListView(
                    nameOrNumber: '10',
                    routeOrAddress: 'kalpetta',
                    driverOrRoute: 'arshad',
                    onPress: () {},
                    leadingIcon: Address.kStdListImage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
