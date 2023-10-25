import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDestination extends StatefulWidget {
  const CarouselDestination({super.key});

  @override
  State<CarouselDestination> createState() => _CarouselDestinationState();
}

class _CarouselDestinationState extends State<CarouselDestination> {
  int state=0;
  final List<String> images = [
    "images/africa.jpg",
    "images/antarctica.jpg",
    "images/asia.jpg",
    "images/australia.jpg",
    "images/europe.jpg",
    "images/north_america.jpg",
    "images/south_america.jpg",
  ];

  final List<String> places = [
    "Africa",
    "Antarctica",
    "Asia",
    "Australia",
    "Europe",
    "North_America",
    "South America",
  ];

  List<Widget> ImagesFile(){
    return images.map((element) => ClipRRect(
      child: Image.asset(
        element,
        fit: BoxFit.cover,
      ),
      borderRadius:const BorderRadius.all(Radius.circular(15.0)),
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Stack(
          children: [
            CarouselSlider(
                items: ImagesFile(),
                options: CarouselOptions(
                  
                  enlargeCenterPage: true,
                  // Take up full width
                )
            )
          ],
        ),
      ),
    );
  }
}
