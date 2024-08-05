import 'package:flutter/material.dart';
import 'package:frontend/pages/about/about.dart';
import 'package:frontend/pages/catalog/catalog.dart';
import 'package:frontend/pages/contact/contact.dart';
import 'package:frontend/pages/home/home.dart';
import 'package:frontend/widgets/navigation/navbar.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorBKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellB');

  static final GoRouter router = GoRouter(
    initialLocation: Routes.aboutRoute,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return ScaffoldWithNestedNavigation(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.homeRoute,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HomePage(),
                ),
              )
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.catalogRoute,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: CatalogPage(),
                ),
              )
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.aboutRoute,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: AboutPage(),
                ),
              )
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.contactRoute,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: ContactPage(),
                ),
              )
            ],
          )
        ],
      ),
    ],
  );
}

class Routes {
  static const homeRoute = '/';
  static const catalogRoute = '/catalog';
  static const aboutRoute = '/about';
  static const contactRoute = '/contact';
}
