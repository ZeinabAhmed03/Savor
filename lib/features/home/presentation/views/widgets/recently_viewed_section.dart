import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';

class RecentlyViewedSection extends StatelessWidget {
  const RecentlyViewedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          autoPlay: true,
          clipBehavior: Clip.none,
          viewportFraction: .7,
          enlargeCenterPage: true,
          height: 300,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Column(
            children: [
              Container(
                height: 160,
                width: 250,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(25),
                  child: Image.asset(AppAssets.bg1, fit: BoxFit.cover),
                ),
              ),
              Text('data'),
            ],
          );
        },
      ),
    );
  }
}
