import 'package:flutter/material.dart';
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

class NavBar extends StatelessWidget {
  NavBar({
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
        centerTitle: true,
        leading: isLargeScreen
            ? null
            : IconButton(
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                icon: const Icon(Icons.menu),
              ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alicia.e',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            if (isLargeScreen)
              Expanded(
                child: _navBarItems(context),
              )
          ],
        ),
      ),
      drawer: isLargeScreen ? null : _drawer(context),
      body: const Center(
        child: Text('body'),
      ),
    );
  }

  Widget _drawer(BuildContext context) => Drawer(
        child: ListView(
          children: _menuItems
              .map((item) => ListTile(
                    onTap: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                      context.go(item.route);
                    },
                    title: Text(item.name),
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
