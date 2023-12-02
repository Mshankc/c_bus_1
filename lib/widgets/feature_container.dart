import 'package:flutter/material.dart';

class FeatureContainer extends StatelessWidget {
  const FeatureContainer(
      {super.key,
      required this.imageAddress,
      required this.featureName,
      required this.onPress});
  final String imageAddress;
  final String featureName;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [
                  Color(0xFF7EE8EF),
                  Color(0xC3DBF0F1),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imageAddress,
                  width: 100,
                  height: 100,
                ),
                Text(
                  featureName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
