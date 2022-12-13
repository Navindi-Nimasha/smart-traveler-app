// ignore: unused_import
import 'package:flutter/material.dart';

class Shop {
  final String image, name;
  final double rating;
  final int id;
  Shop({
    required this.id,
    required this.image,
    required this.name,
    required this.rating,
  });
}

List<Shop> shops = [
  Shop(
    id: 1,
    name: "Shop A",
    image: "assets/images/shops/s11.png",
    rating: 4.5,
  ),
  Shop(
    id: 2,
    name: "Shop B",
    image: "assets/images/shops/s2.jpg",
    rating: 4.5,
  ),
  Shop(
    id: 3,
    name: "Shop C",
    image: "assets/images/shops/s3.jpg",
    rating: 4.5,
  ),
  Shop(
    id: 4,
    name: "Shop D",
    image: "assets/images/shops/s4.jpg",
    rating: 4.4,
  ),
  Shop(
    id: 5,
    name: "Shop E",
    image: "assets/images/shops/s5.jpg",
    rating: 4.3,
  ),
  Shop(
    id: 6,
    name: "Shop F",
    image: "assets/images/shops/s6.jpg",
    rating: 4.1,
  ),
];
