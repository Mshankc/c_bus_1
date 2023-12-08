import 'package:flutter/material.dart';

class TopCircularContainer extends StatelessWidget {
  const TopCircularContainer({
    super.key,
    required this.color,
    required this.child,
  });
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
