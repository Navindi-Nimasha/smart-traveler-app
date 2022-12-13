import 'package:flutter/material.dart';

class Location {
  final String image, name;
  final double rating;
  final int id;
  Location({
    required this.id,
    required this.image,
    required this.name,
    required this.rating,
  });
}

List<Location> locations = [
  Location(
    id: 1,
    name: "mihinthale",
    image: "assets/images/locations/miinthale/4.jpg",
    rating: 4.5,
  ),
  Location(
    id: 2,
    name: "ruwanwelisaye",
    image: "assets/images/locations/r1.jpg",
    rating: 4.5,
  ),
  Location(
    id: 3,
    name: "ritigala",
    image: "assets/images/locations/riti1.jpg",
    rating: 4.5,
  ),
  Location(
    id: 4,
    name: "ranmas uyana",
    image: "assets/images/locations/ranmasu1.jpg",
    rating: 4.4,
  ),
  Location(
    id: 5,
    name: "isurumuniya",
    image: "assets/images/locations/Isurumuniya1.jpg",
    rating: 4.3,
  ),
  Location(
    id: 6,
    name: "jaya sri maha bodhi",
    image: "assets/images/locations/jayasrimaha-bodhi1.jpg",
    rating: 4.1,
  ),
];
