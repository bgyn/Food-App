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
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return CarouselSlider(
      options: CarouselOptions(
        height: height * 0.2,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        viewportFraction: 0.9,
      ),
      items: [
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            width: width,
            height: height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://images.unsplash.com/photo-1528279027-68f0d7fce9f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc3QlMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            width: width,
            height: height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://plus.unsplash.com/premium_photo-1667682209935-b6c87cced668?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZmFzdCUyMGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            width: width,
            height: height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGZvb2QlMjBhZHZlcnRpc21lbnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        ),
        CachedNetworkImage(
          filterQuality: FilterQuality.high,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          imageBuilder: (context, imageProvider) => Container(
            width: width,
            height: height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          imageUrl:
              'https://images.unsplash.com/photo-1610614819513-58e34989848b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZhc3QlMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        ),
      ],
    );
  }
}
