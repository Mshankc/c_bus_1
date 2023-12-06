import 'package:flutter/material.dart';

import '../../widgets/childdetailcard.dart';

class ParentChildList extends StatefulWidget {
  const ParentChildList({super.key});

  @override
  State<ParentChildList> createState() => _ParentChildListState();
}

class _ParentChildListState extends State<ParentChildList> {
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
