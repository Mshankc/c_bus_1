import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/submitbutton.dart';
import 'package:flutter/material.dart';

import '../services/login_validator.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/bus.png',
            width: double.infinity,
          ),
          Column(
            children: [
              MyTextField(
                hintText: AutofillHints.username,
                obscureText: false,
                controller: _usernameController,
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                hintText: AutofillHints.password,
                obscureText: true,
                controller: _passwordController,
              ),
              const SizedBox(
                height: 30,
              ),
              SubmitButton(
                  onPress: () {
                    handleLogin(
                      context,
                      _usernameController.text,
                      _passwordController.text,
                    );
                  },
                  buttonName: 'Login'),
            ],
          ),
        ],
      ),
    );
  }
}
