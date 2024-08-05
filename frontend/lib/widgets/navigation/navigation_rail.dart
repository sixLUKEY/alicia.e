import 'package:flutter/material.dart';
import 'package:frontend/widgets/navigation/destinations.dart';

class NavRail extends StatelessWidget {
  const NavRail({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) => NavigationRail(
        destinations: destinations
            .map((d) => NavigationRailDestination(
                  icon: Icon(
                    d.icon,
                  ),
                  label: Text(d.label),
                ))
            .toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      );
}
