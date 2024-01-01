import 'package:care_bus/utils/address.dart';
import 'package:flutter/material.dart';
import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/submitbutton.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                // Background Image
                Center(
                  child: Image.asset(
                    'images/Group 4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Your Image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ClipOval(
                      child: Image.asset(
                        Address.kAdminLogo,
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const MyTextField(hintText: AutofillHints.name, obscureText: false),
            const MyTextField(hintText: 'phone', obscureText: false),
            const MyTextField(
                hintText: AutofillHints.email, obscureText: false),
            SubmitButton(
              onPress: () {
                Navigator.pushNamed(context, '/loginscreen');
              },
              buttonName: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
