import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imagesList = [
  'assets/img/products/IMG_3893.png',
  'assets/img/products/IMG_3894.png',
  'assets/img/products/IMG_3896.png',
  'assets/img/products/IMG_3897.png',
  'assets/img/products/IMG_3898.png',
  'assets/img/products/IMG_3902.png',
];
final List<String> titles = [
  ' Some Product ',
  ' Another Product ',
  ' More Products ',
  ' Different Product ',
  ' Something more ',
  ' And one more ',
];

class HowWeDoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.3,
        autoPlayAnimationDuration: const Duration(milliseconds: 100),
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: imagesList
          .map(
            (item) => Center(
              child: Image(
                image: AssetImage(item),
                fit: BoxFit.cover,
              ),
            ),
          )
          .toList(),
    );
  }
}
