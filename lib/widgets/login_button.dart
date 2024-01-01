import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onTap,
    required this.name,
  });
  final VoidCallback onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.06,
          decoration:  BoxDecoration(
            color: AppColors.kMainBgColor,
            borderRadius:  BorderRadius.circular(10),
            boxShadow:const [
              BoxShadow(
                  color: AppColors.kShadowColor,
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                  blurRadius: 4)
            ],
          ),
          child: Center(
            child: Text(
              name,
              style: GoogleFonts.rubik(
                  fontSize: 20, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
