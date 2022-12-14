import 'package:flutter/material.dart';

class PlaceInfo {
  final String location, image, name;
  final double star;

  PlaceInfo({
    required this.name,
    required this.image,
    required this.location,
    required this.star,
  });
}

List places = [
  PlaceInfo(
    image: 'assets/images/D.jpg',
    location: 'Greenland',
    name: 'Mount Forel',
    star: 4.8,
  ),
  PlaceInfo(
    image: 'assets/images/A.png',
    location: 'Patagonia',
    name: 'Eco Camping',
    star: 4.5,
  ),
  PlaceInfo(
    image: 'assets/images/C.jpg',
    location: 'Nepal',
    name: 'Mount Everest',
    star: 4.7,
  ),
  PlaceInfo(
    image: 'assets/images/B.png',
    location: 'Nepal',
    name: 'Mount Everest',
    star: 4.7,
  ),
];
