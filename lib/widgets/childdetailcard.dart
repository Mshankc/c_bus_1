import 'package:care_bus/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';

class ChildDetailCard extends StatelessWidget {
  const ChildDetailCard(
      {super.key,
      required this.studentName,
      required this.studentClass,
      required this.studentPlace,
      required this.studentPhotoUrl});
  final String studentName;
  final String studentClass;
  final String studentPlace;
  final String studentPhotoUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: const BoxDecoration(
          color: AppColors.kChildConatinerColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.kShadowColor,
              blurRadius: 8,
              offset: Offset(0, 4),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ClipOval(
                child: Image.asset(
                  studentPhotoUrl,
                  width: MediaQuery.of(context).size.height * 1 / 8,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      studentName,
                      style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      studentClass,
                      style: GoogleFonts.rubik(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      studentPlace,
                      style: GoogleFonts.rubik(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.close_rounded,
                      color: Colors.red,
                      size: iconSize,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.check_rounded,
                      color: Colors.green,
                      size: iconSize,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//TODO: Connect student details with DB
