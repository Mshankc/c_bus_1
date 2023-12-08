import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/topcircularcontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //TODO:fix overflow
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset(Address.kMainBusImage),
            ),
          ),
          TopCircularContainer(
            color: AppColors.kLoginContainerColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        AppStrings.loginText_1,
                        style: GoogleFonts.rubik(
                            color: AppColors.kIconColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      Text(
                        AppStrings.loginText_2,
                        style:
                            GoogleFonts.rubik(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const MyTextField(
                    hintText: AutofillHints.username,
                    obscureText: false,
                  ),
                  const MyTextField(
                      hintText: AutofillHints.password, obscureText: true),
                  LoginButton(
                    onTap: () {},
                    name: 'Login',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
