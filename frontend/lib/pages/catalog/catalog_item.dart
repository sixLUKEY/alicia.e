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
  final List<String> images;
  final String materials;
  final String description;
}

enum Category {
  wedding,
  matric,
}

List<CatalogItem> catalogItems = [
  CatalogItem(
    name: 'WD1',
    category: Category.wedding,
    thumbnail: Image.asset(
      'assets/images/W1/p3.jpg',
      fit: BoxFit.fill,
    ),
    images: [
      // 'assets/images/W1/p1.jpg',
      'assets/images/W1/p3.jpg',
      'assets/images/W1/p2.jpg',
      'assets/images/W1/p4.jpg',
      'assets/images/W1/p5.jpg',
      'assets/images/W1/p6.jpg',
      'assets/images/W1/p7.jpg',
      // 'assets/images/W1/p8.jpg',
      // 'assets/images/W1/p9.jpg',
    ],
    materials: 'Lace, Satin, Tulle',
    description:
        'Our beautiful client Jesse has opted for this soft , romantic look. The A-line fully beaded lace dress is lined with Armani Satin. The sleeves are soft tulle, with applique work finishing off the sleeve crown. The Cathedral veil is completing the whole look. ',
  ),
  CatalogItem(
    name: 'MX1',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C2/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C2/p1.jpg',
      'assets/images/C2/p2.jpg',
      // 'assets/images/C2/p3.jpg'
    ],
    materials: 'Lace, Bon Bon',
    description:
        'Our girl Caitlin is wearing a lace bodice with rhinestones,  bottom skirt gobble layered Bon bon and Barbie.',
  ),
  CatalogItem(
    name: 'MX2',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C7/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C7/p1.jpg',
    ],
    materials: 'Armani Satin',
    description:
        'Miss Jay wearing a vintage look - 2 layered Armani Satin with beaded bodice dress',
  ),
  CatalogItem(
    name: 'MX3',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C4/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C4/p1.jpg',
      'assets/images/C4/p2.jpg',
      'assets/images/C4/p3.jpg'
    ],
    materials: 'Lace',
    description:
        'Zimkita is wearing a fully lace dress. Applique work. Handsewing',
  ),
  CatalogItem(
    name: 'WD2',
    category: Category.wedding,
    thumbnail: Image.asset('assets/images/W2/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/W2/p1.jpg',
    ],
    materials: 'Bon Bon',
    description: 'Bridesmaid infinity dresses in Bon Bon fabric',
  ),
  CatalogItem(
    name: 'MX4',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C5/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C5/p1.jpg',
      'assets/images/C5/p2.jpg',
      'assets/images/C5/p3.jpg'
    ],
    materials: 'Zara Satin, Diamante',
    description:
        'This vintage looks takes for Zara Satin finished off with Diamante straps and embellished with silver diamantes',
  ),
  CatalogItem(
    name: 'MX5',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C3/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C3/p1.jpg',
      'assets/images/C3/p2.jpg',
      'assets/images/C3/p3.jpg',
      'assets/images/C3/p4.jpg',
      'assets/images/C3/p5.jpg',
    ],
    materials: 'Lace, Satin, Lave, Tulle',
    description:
        'Chelde is wearing a lace dress with satin lining. Bodice finished off with satin, lave and skin colour tulle.  The bottom hem is finished off hand-sewn applique.',
  ),
  CatalogItem(
    name: 'MX6',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C1/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C1/p1.jpg',
      'assets/images/C1/p2.jpg',
    ],
    materials: 'Lace, Satin',
    description:
        'Client is wearing a emerald green lace boob tube dress. Lining is satin',
  ),
  CatalogItem(
    name: 'MX7',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C6/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C6/p1.jpg',
      'assets/images/C6/p2.jpg',
      'assets/images/C6/p3.jpg'
    ],
    materials: 'Zara Satin, Diamante',
    description:
        'Jaden is wearing a Zara Satin creation. Diamantes embedded at Bust, arm and low waist area. The back Finished off with a train.',
  ),
  CatalogItem(
    name: 'WD3',
    category: Category.wedding,
    thumbnail: Image.asset('assets/images/W3/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/W3/p1.jpg',
    ],
    materials: 'Lace, Satin, Tulle',
    description:
        'What a joy. We\'ve made the suit and cravat for the groom. The brides dress is Bridal lace at the bodice. The skirt has layers of satin and soft tulle. ',
  ),
  CatalogItem(
    name: 'MX8',
    category: Category.matric,
    thumbnail: Image.asset('assets/images/C8/p1.jpg', fit: BoxFit.cover),
    images: [
      'assets/images/C8/p1.jpg',
    ],
    materials: 'Satin, Organza, Chiffon',
    description:
        'Our client Jordan looks whimsical in her evening gown. Her dress is made from Satin, organza and chiffon. The full circled skirt is finished off with soft layered organza and chiffon. Accessories in purple is finishing off this look.',
  ),
];
