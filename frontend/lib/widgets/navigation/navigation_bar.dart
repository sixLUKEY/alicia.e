import 'package:flutter/material.dart';
import 'package:frontend/widgets/navigation/destinations.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          NavigationBar(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            destinations: destinations
                .map<NavigationDestination>(
                  (d) => NavigationDestination(
                    icon: Icon(d.icon),
                    label: d.label,
                  ),
                )
                .toList(),
          ),
        ],
      );
}
