import 'package:flutter/material.dart';

class FeatureScreenHead extends StatelessWidget {
  const FeatureScreenHead({
    super.key,
    required this.featureName,
    required this.icon,
  });
  final String featureName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Text(
            featureName.toUpperCase(),
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 8,
          ),
          Icon(icon, size: 30)
        ],
      ),
    );
  }
}
