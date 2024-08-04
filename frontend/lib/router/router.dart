import 'package:flutter/material.dart';
import 'package:frontend/pages/about/about.dart';
import 'package:frontend/pages/home/home.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorBKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellB');

  static final GoRouter router = GoRouter(
    initialLocation: Routes.homeRoute,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: Routes.homeRoute,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
      GoRoute(
          path: Routes.aboutRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const AboutPage();
          }),
    ],
  );
}

class Routes {
  static const homeRoute = '/';
  static const catalogRoute = '/catalog';
  static const aboutRoute = '/about';
  static const contactRoute = '/contact';
}
