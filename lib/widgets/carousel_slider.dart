import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliders extends StatefulWidget {
  const CarouselSliders({super.key});

  @override
  State<CarouselSliders> createState() => _CarouselSlidersState();
}

class _CarouselSlidersState extends State<CarouselSliders> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return CarouselSlider(
      options: CarouselOptions(
        height: height * 0.2,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        viewportFraction: 1,
      ),
      items: [
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://bhokmandu.com.np/uploads/media/Bhokmandu-slider-1.jpg',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://bhokmandu.com.np/uploads/media/Bhokmandu-slider-2.jpg',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://bhokmandu.com.np/uploads/media/Bhokmandu-slider-3.jpg',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://bhokmandu.com.np/uploads/media/Bhokmandu-slider-4.jpg',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://bhokmandu.com.np/uploads/media/Bhokmandu-slider-5.jpg',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://bhokmandu.com.np/uploads/media/Bhokmandu-slider-6.jpg',
        ),
      ],
    );
  }
}
