import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.onPress,
    required this.buttonName,
  }) : super(key: key);

  final VoidCallback onPress;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 180,
        height: 40,
        decoration: ShapeDecoration(
          color: const Color(0xA07EE8EF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            buttonName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.grey.shade900),
          ),
        ),
      ),
    );
  }
}
