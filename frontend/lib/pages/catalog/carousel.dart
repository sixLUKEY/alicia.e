import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/catalog/catalog_item.dart';
import 'package:go_router/go_router.dart';
// import 'package:frontend/pages/catalog/catalog_item.dart';

class VerticalSlider extends StatelessWidget {
  const VerticalSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isSmall = width <= 700;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: width - width * 0.08,
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: isSmall ? 9 / 16 : 16 / 9,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
              autoPlay: true,
            ),
            items: imageSliders,
          ),
        ),
      ),
    );
  }
}

final List<Widget> imageSliders = catalogItems.map((item) {
  return Builder(builder: (context) {
    return InkWell(
      onTap: () {
        context.go('/catalog/${item.name}');
      },
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 450,
                  maxWidth: 1000,
                ),
                child: Image.asset(
                  item.images[0],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  alignment: AlignmentDirectional.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}).toList();
