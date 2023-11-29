import 'package:flutter/material.dart';
import 'package:care_bus/widgets/user_container_widget.dart';
import 'package:care_bus/utils/constants.dart';
import 'package:care_bus/widgets/topcircularcontainer.dart';

class UserSelection extends StatelessWidget {
  const UserSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kcbMainColor,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'images/bus.png',
                width: 300,
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Let\'s Go',
                style: TextStyle(fontSize: 25),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Track your child during transit',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Expanded(
              flex: 4,
              child: TopCircularContainer(
                customColor: Colors.white,
                customChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Who Are You ? '),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UserSelectContainer(
                          clor: kcbMainColor,
                          onPress: () {},
                          user: 'Iam parent',
                        ),
                        UserSelectContainer(
                          clor: kcbMainColor,
                          onPress: () {},
                          user: 'Iam Admin',
                        ),
                      ],
                    ),
                    UserSelectContainer(
                      clor: kcbMainColor,
                      onPress: () {},
                      user: 'Iam Driver',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
