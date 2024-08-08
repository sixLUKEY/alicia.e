import 'package:flutter/material.dart';
import 'package:frontend/router/router.dart';

class Destination {
  const Destination(
    this.icon,
    this.label,
    this.route,
  );

  final IconData icon;
  final String label;
  final String route;
}

const List<Destination> destinations = <Destination>[
  Destination(Icons.home, 'Home', Routes.homeRoute),
  Destination(Icons.browse_gallery, 'Catalog', Routes.catalogRoute),
  // Destination(Icons.info, 'About', Routes.aboutRoute),
  Destination(Icons.phone, 'Contact', Routes.contactRoute),
];
