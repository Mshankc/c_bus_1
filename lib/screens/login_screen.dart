import 'package:care_bus/services/login_validator.dart';
import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:care_bus/utils/colors.dart';
import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/topcircularcontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //TODO:fix overflow
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SingleChildScrollView(
                    child: Column(
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
                  ),
                  MyTextField(
                    hintText: AutofillHints.username,
                    obscureText: false,
                    controller: _usernameController,
                  ),
                   MyTextField(
                      hintText: AutofillHints.password,
                      controller: _passController,
                      obscureText: true),
                  LoginButton(
                    onTap: () {
                      handleLogin(context, _usernameController.text,_passController.text);
                    },
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
