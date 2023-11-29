import 'package:flutter/material.dart';

class TopCircularContainer extends StatelessWidget {
  const TopCircularContainer({
    super.key,
    required this.customColor,
    required this.customChild,
  });
  final Color customColor;
  final Widget customChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: customColor,
      ),
      child: customChild,
    );
  }
}
