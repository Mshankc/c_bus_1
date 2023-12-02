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
                Center(
                  child: Image.asset(
                    'images/On the way home.png',
                  ),
                ),
              ],
            ),
            const MyTextField(hintText: AutofillHints.name, obscureText: false),
            const MyTextField(hintText: 'age', obscureText: false),
            const MyTextField(hintText: 'phone', obscureText: false),
            const MyTextField(hintText: 'experience', obscureText: false),
            SubmitButton(
              onPress: () {},
              buttonName: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
