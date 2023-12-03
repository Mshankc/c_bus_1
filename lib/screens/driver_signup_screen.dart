import 'package:care_bus/utils/address.dart';
import 'package:flutter/material.dart';
import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/submitbutton.dart';

class DriverLogin extends StatefulWidget {
  const DriverLogin({super.key});

  @override
  State<DriverLogin> createState() => _DriverLoginState();
}

class _DriverLoginState extends State<DriverLogin> {
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
                    'images/bg_image_driver.png',
                    fit: BoxFit.cover,
                  ),
                ),
                // Your Image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Image.asset(
                      Address.kDriverIcon,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
            const MyTextField(hintText: AutofillHints.name, obscureText: false),
            const MyTextField(hintText: 'age', obscureText: false),
            const MyTextField(hintText: 'phone', obscureText: false),
            const MyTextField(hintText: 'experience', obscureText: false),
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
