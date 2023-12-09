import 'package:flutter/material.dart';

import '../../widgets/childdetailcard.dart';

class DriverStudentListScreen extends StatefulWidget {
  const DriverStudentListScreen({super.key});

  @override
  State<DriverStudentListScreen> createState() =>
      _DriverStudentListScreenState();
}

class _DriverStudentListScreenState extends State<DriverStudentListScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return const ChildDetailCard(
          studentName: '',
          studentClass: '',
          studentPlace: '',
          studentPhotoUrl: '',
        );
      },
    );
  }
}
