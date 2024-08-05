import 'package:flutter/material.dart';
import 'package:frontend/widgets/navigation/destinations.dart';
import 'package:go_router/go_router.dart';

class Route {
  const Route({required this.name, required this.route});

  final String name;
  final String route;
}

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
            key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'));

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 550) {
        return ScaffoldWithDrawerNavBar(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      } else {
        return ScaffoldWithNavBar(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      }
    });
  }
}

class ScaffoldWithDrawerNavBar extends StatelessWidget {
  ScaffoldWithDrawerNavBar({
    Key? key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldDrawer'));

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'Alicia.e',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        body: body,
        drawer: _drawer(context),
      );
  Drawer _drawer(BuildContext context) => Drawer(
        child: ListView(
          children: destinations
              .map((item) => ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      context.go(item.route);
                    },
                    title: Text(item.label),
                  ))
              .toList(),
        ),
      );
}

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Alicia.e',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          centerTitle: false,
          actions: destinations
              .map((d) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: InkWell(
                      child: Text(d.label),
                      onTap: () {
                        context.go(d.route);
                      },
                    ),
                  ))
              .toList(),
        ),
        body: body,
      );
}
