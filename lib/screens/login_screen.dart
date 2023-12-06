import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/topcircularcontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset(Address.kMainBusImage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TopCircularContainer(
              color: AppColors.kLoginContainerColor,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.loginText_1,
                      style: GoogleFonts.rubik(
                          color: AppColors.kIconColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      AppStrings.loginText_2,
                      style:
                          GoogleFonts.rubik(color: Colors.grey, fontSize: 12),
                    ),
                    const MyTextField(hintText: 'Username', obscureText: false),
                    const MyTextField(
                        hintText: AutofillHints.password, obscureText: true),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 50),
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
                            'Login',
                            style: GoogleFonts.rubik(
                                fontSize: 20, color: Colors.yellow.shade900),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
