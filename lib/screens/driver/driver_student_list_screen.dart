import 'package:flutter/material.dart';

import '../../widgets/childdetailcard.dart';

class DriverStudentListScreen extends StatefulWidget {
  const DriverStudentListScreen({super.key});

  @override
  State<DriverStudentListScreen> createState() =>
      _DriverStudentListScreenState();
}

class _DriverStudentListScreenState extends State<DriverStudentListScreen> {
  List name = ["Anver", "Ek", "Jasmin", "Nida"];
  List studentClass = ["7th A", "10th", "3rd B", "5Th A"];
  List place = ["Padinjarathara", "Thalassery", "Koduvally", "Koduvally"];
  List photoUrl = [
    "images/anver_img.jpg",
    "images/ek_img.jpg",
    "images/jasmine_img.jpg",
    "images/nidha_img.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: name.length,
      itemBuilder: (BuildContext context, int index) {
        return ChildDetailCard(
          studentName: name[index],
          studentClass: studentClass[index],
          studentPlace: place[index],
          studentPhotoUrl: photoUrl[index],
        );
      },
    );
  }
}
