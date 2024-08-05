import 'package:flutter/material.dart';

class CatalogItem {
  const CatalogItem({
    required this.name,
    required this.category,
    required this.thumbnail,
    required this.images,
    required this.materials,
    required this.description,
  });

  final String name;
  final Category category;
  final Image thumbnail;
  final List<Image> images;
  final List<String> materials;
  final String description;
}

enum Category {
  wedding,
  matric,
}
