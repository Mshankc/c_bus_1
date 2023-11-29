import 'package:flutter/material.dart';

class UserSelectContainer extends StatelessWidget {
  const UserSelectContainer({
    super.key,
    required this.clor,
    required this.onPress,
    required this.user,
  });
  final Color clor;
  final VoidCallback onPress;
  final String user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 110,
        height: 104,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: clor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFF028C6F), offset: Offset(0, 4), blurRadius: 8),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.person,
              size: 20,
            ),
            Text(user)
          ],
        ),
      ),
    );
  }
}
