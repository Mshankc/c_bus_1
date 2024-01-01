import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.driverOrParentName,
  }) : super(key: key);

  final String driverOrParentName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
        child: Drawer(
          backgroundColor: AppColors.kDrawerColor,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 SizedBox(
                   height: 35,
                 ),
                Text(
                  driverOrParentName,
                  style: GoogleFonts.oswald(fontSize: 20),
                ),
                Divider(
                  color: Colors.grey.shade800,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/loginscreen');
                  },
                  child: Text(
                    'Log out',
                    style: GoogleFonts.oswald(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
