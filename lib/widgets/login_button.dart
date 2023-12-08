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
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1 / 12,
          decoration: BoxDecoration(
            color: Colors.yellow.shade200,
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            boxShadow: const [
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
                  fontSize: 20, color: Colors.yellow.shade900),
            ),
          ),
        ),
      ),
    );
  }
}
