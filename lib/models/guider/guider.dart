// ignore: unused_import
import 'package:flutter/material.dart';

class Guider {
  final String image, name;
  final double rating;
  final int id;
  Guider({
    required this.id,
    required this.image,
    required this.name,
    required this.rating,
  });
}

List<Guider> guiders = [
  Guider(
    id: 1,
    name: "Themiya Dissanayake",
    image: "assets/images/guiders/g1.jpg",
    rating: 4.5,
  ),
  Guider(
    id: 2,
    name: "Chamika Dilshan",
    image: "assets/images/guiders/g2.jpg",
    rating: 4.5,
  ),
  Guider(
    id: 3,
    name: "Navindi Dharmarathne",
    image: "assets/images/guiders/g6.jpg",
    rating: 4.5,
  ),
  Guider(
    id: 4,
    name: "Asela Madusanka",
    image: "assets/images/guiders/g3.jpg",
    rating: 4.4,
  ),
  Guider(
    id: 5,
    name: "Sithma Thathsarani",
    image: "assets/images/guiders/g4.jpg",
    rating: 4.3,
  ),
  Guider(
    id: 6,
    name: "Harsha Walisundara",
    image: "assets/images/guiders/g5.jpg",
    rating: 4.1,
  ),
];
