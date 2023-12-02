import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer(
      {super.key,
      required this.imageAddress,
      required this.name,
      required this.onPress});
  final String imageAddress;
  final String name;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF7EE8EF),
            Color(0x007EE8EF),
          ],
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 8),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                color: Colors.grey.shade700,
                icon: const Icon(
                  Icons.notifications_rounded,
                  size: 50,
                ),
                onPressed: onPress,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              imageAddress,
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )),
          )
        ],
      ),
    );
  }
}
