import 'package:flutter/material.dart';

import '../../widgets/childdetailcard.dart';

class ParentChildList extends StatefulWidget {
  const ParentChildList({super.key});

  @override
  State<ParentChildList> createState() => _ParentChildListState();
}

class _ParentChildListState extends State<ParentChildList> {
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
