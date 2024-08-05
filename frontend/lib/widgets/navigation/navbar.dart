import 'package:flutter/material.dart';
import 'package:frontend/widgets/navigation/destinations.dart';
import 'package:go_router/go_router.dart';

final List<Route> _menuItems = [
  const Route(name: 'Home', route: '/'),
  const Route(name: 'About', route: '/about'),
  const Route(name: 'Contact', route: '/contact'),
  const Route(name: 'Catalog', route: '/catalog'),
];

class Route {
  const Route({required this.name, required this.route});

  final String name;
  final String route;
}

class ANavBar extends StatelessWidget {
  ANavBar({
    super.key,
  });

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(context) {
    final width = MediaQuery.of(context).size.width;
    final bool isLargeScreen = width > 800;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: isLargeScreen ? false : true,
        title: Text(
          'Alicia.e',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          if (isLargeScreen) _navBarItems(context),
        ],
      ),
      drawer: isLargeScreen ? null : _drawer(context),
      body: const Center(
        child: Text('body'),
      ),
    );
  }

  Widget _drawer(BuildContext context) => Drawer(
        child: ListView(
          children: destinations
              .map((item) => ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      _scaffoldKey.currentState?.openEndDrawer();
                      context.go(item.route);
                    },
                    title: Text(item.label),
                  ))
              .toList(),
        ),
      );

  Widget _navBarItems(context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _menuItems
            .map((item) => InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 16,
                    ),
                    child: Text(
                      item.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ))
            .toList(),
      );
}

class ScaffoldWithNestedNavigation extends StatelessWidget {
  ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
            key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'));

  final StatefulNavigationShell navigationShell;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
          key: _scaffoldKey,
          drawer: _drawer(context),
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

  Drawer _drawer(BuildContext context) => Drawer(
        child: ListView(
          children: destinations
              .map((item) => ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      // _scaffoldKey.currentState?.closeDrawer();
                      // Navigator.of(context).pop();
                      context.go(item.route);
                    },
                    title: Text(item.label),
                  ))
              .toList(),
        ),
      );
}

class ScaffoldWithDrawerNavBar extends StatelessWidget {
  const ScaffoldWithDrawerNavBar({
    Key? key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.drawer,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldDrawer'));

  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Drawer drawer;

  @override
  Widget build(BuildContext context) => Scaffold(
        key: key,
        appBar: AppBar(
          title: Text(
            'Alicia.e',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        body: body,
        drawer: drawer,
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
