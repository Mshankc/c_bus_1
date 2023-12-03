import 'package:flutter/material.dart';

class UserSelectContainer extends StatelessWidget {
  const UserSelectContainer({
    super.key,
    required this.color,
    required this.onPress,
    required this.user,
    required this.icon,
  });
  final Color color;
  final VoidCallback onPress;
  final String user;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 110,
        height: 104,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFF028C6F), offset: Offset(0, 4), blurRadius: 8),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                icon,
                height: 60,
                width: 60,
              ),
            ),
            Expanded(
              child: Text(user),
            ),
          ],
        ),
      ),
    );
  }
}
