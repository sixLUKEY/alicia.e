import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/catalog/catalog_item.dart';

class ItemPage extends StatelessWidget {
  ItemPage({
    super.key,
    required this.itemId,
  });

  final String itemId;
  late final CatalogItem item =
      catalogItems.singleWhere((i) => i.name == itemId);

  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    item.materials,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  EnlargeCarousel(
                    item: item,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class EnlargeCarousel extends StatelessWidget {
  const EnlargeCarousel({
    super.key,
    required this.item,
  });

  final CatalogItem item;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isSmall = width <= 700;
    return SizedBox(
      height: 500,
      width: width * 0.9,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: isSmall ? 9 / 16 : 16 / 9,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: item.images
            .map(
              (img) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  img,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
