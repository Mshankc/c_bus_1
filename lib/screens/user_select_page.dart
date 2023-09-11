import 'package:flutter/material.dart';

class UserSelection extends StatelessWidget {
  const UserSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset(
                'images/bus.png',
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
