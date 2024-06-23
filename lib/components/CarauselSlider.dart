import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWithImages extends StatefulWidget {
  @override
  State<CarouselWithImages> createState() => _CarouselWithImagesState();
}

class _CarouselWithImagesState extends State<CarouselWithImages> {
  final List<String> imgList = [
    'assets/images/baseus1.png',
    'assets/images/baseus2.png',
    'assets/images/baseus3.png',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true, // Aktifkan auto play
        autoPlayInterval: Duration(seconds: 3), // Interval auto play
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      items: imgList
          .map((item) => Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
