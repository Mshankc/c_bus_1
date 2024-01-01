import 'package:care_bus/screens/item_info.dart';
import 'package:care_bus/utils/address.dart';
import 'package:care_bus/utils/app_strings.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:care_bus/widgets/mytextfield.dart';
import 'package:care_bus/widgets/submitbutton.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DriverLogin extends StatefulWidget {
  const DriverLogin({super.key});

  @override
  State<DriverLogin> createState() => _DriverLoginState();
}

class _DriverLoginState extends State<DriverLogin> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController expController = TextEditingController();

  Future<void> addDriverData(name, exp, phone) async {
    CollectionReference driver =
        FirebaseFirestore.instance.collection("driver");
    await driver.add({"name": name, "experience": exp, "phone_number": phone});
  }

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
            MyTextField(
              hintText: 'Name',
              obscureText: false,
              controller: usernameController,
            ),
            MyTextField(
              hintText: 'phone',
              obscureText: false,
              controller: phoneController,
            ),
            MyTextField(
              hintText: 'experience',
              obscureText: false,
              controller: expController,
            ),
            SubmitButton(
              onPress: () async{
                await addDriverData(usernameController.text, expController.text,
                    phoneController.text);
              },
              buttonName: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
