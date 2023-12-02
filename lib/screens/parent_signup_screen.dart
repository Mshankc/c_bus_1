import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/submitbutton.dart';
import 'package:flutter/material.dart';

class ParentLogin extends StatefulWidget {
  const ParentLogin({super.key});

  @override
  State<ParentLogin> createState() => _ParentLoginState();
}

class _ParentLoginState extends State<ParentLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/Rectangle 6 (1).png'),
            const MyTextField(hintText: AutofillHints.name, obscureText: false),
            const MyTextField(hintText: 'Address', obscureText: false),
            const MyTextField(hintText: 'class', obscureText: false),
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
