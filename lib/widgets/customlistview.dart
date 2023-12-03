import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.nameOrNumber,
    required this.routeOrAddress,
    required this.driverOrRoute,
    required this.onPress,
    required this.leadingIcon,
  });
  final String nameOrNumber;
  final String routeOrAddress;
  final String driverOrRoute;
  final String leadingIcon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: const Color(0xfff8efc0),
      titleAlignment: ListTileTitleAlignment.center,
      leading: Image.asset(leadingIcon),
      title: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nameOrNumber),
            Text(routeOrAddress),
            Text(driverOrRoute),
          ],
        ),
      ),
      trailing: IconButton(
        onPressed: onPress,
        icon: const Icon(Icons.menu),
      ),
    );
  }
}
