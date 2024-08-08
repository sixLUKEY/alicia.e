import 'package:flutter/material.dart';
import 'package:frontend/pages/catalog/carousel.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({
    super.key,
  });

  @override
  Widget build(context) => const Center(
        child: VerticalSlider(),
      );
}
