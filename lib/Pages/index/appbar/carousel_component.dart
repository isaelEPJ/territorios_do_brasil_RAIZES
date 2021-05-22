import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_territorios_do_brasil/utils/app_images.dart';
import 'package:flutter/material.dart';

class CarouselComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Image> _images = [
      Image.asset(AppImages.cenario_253, fit: BoxFit.cover),
      Image.asset(AppImages.cenario_512, fit: BoxFit.cover),
      Image.asset(AppImages.earth_image512, fit: BoxFit.cover),
      Image.asset(AppImages.green_factory_512, fit: BoxFit.cover),
    ];
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.3,
        aspectRatio: 19 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(microseconds: 1000),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: _images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.symmetric(horizontal: 1),
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(color: Colors.amber),
                child: i);
          },
        );
      }).toList(),
    );
  }
}
