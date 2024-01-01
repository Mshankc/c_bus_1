import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.driverOrParentName,
  });
  final String driverOrParentName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.kDrawerColor,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                style: GoogleFonts.oswald(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
