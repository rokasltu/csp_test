import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final objects = [
  CarouselObject(
      name: ' test1 ',
      path: 'assets/img/mit.png',
      link: 'https://rokas.website/'),
  CarouselObject(
      name: ' test2 ',
      path: 'assets/img/wl1.png',
      link: '/'),
  CarouselObject(
      name: ' test3 ',
      path: 'assets/img/moneycalculator-app.png',
      link: '/'),
  CarouselObject(
      name: ' test4 ',
      path: 'assets/img/wl-app.png',
      link: '/'),
];

class HowWeDoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 0.8,
        autoPlayAnimationDuration: const Duration(milliseconds: 100),
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: objects
          .map(
            (item) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(item.name),
                  ),
                  TextButton(
                    onPressed: () => _launchURL(item.link),
                    child: Image(
                      image: AssetImage(item.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}

class CarouselObject {
  final String name;
  final String path;
  final String link;

  CarouselObject({this.name, this.path, this.link});
}
