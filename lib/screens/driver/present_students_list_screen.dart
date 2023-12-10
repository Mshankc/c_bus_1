import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PresentStudentsList extends StatefulWidget {
  const PresentStudentsList({super.key});

  @override
  State<PresentStudentsList> createState() => _PresentStudentsListState();
}

class _PresentStudentsListState extends State<PresentStudentsList> {
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
    {
      return SafeArea(
        child: ListView.builder(
          itemCount: name.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              leading: ClipOval(child: Image.asset(photoUrl[index].toString())),
              title: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name[index],
                      style: GoogleFonts.oswald(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(studentClass[index]),
                    Text(place[index]),
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
            );
          },
        ),
      );
    }
  }
}
