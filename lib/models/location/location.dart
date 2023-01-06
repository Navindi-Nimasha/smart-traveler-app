import 'package:flutter/material.dart';

class Location {
  final String image, image1, image2, image3, image4, image5, name;
  final double rating;
  final int id;
  Location({
    required this.id,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.name,
    required this.rating,
  });
}

List<Location> locations = [
  Location(
    id: 1,
    name: "Mihinthalaya Temple",
    image: "assets/images/locations/miinthale/4.jpg",
    image1: "assets/images/locations/miinthale/1.jpeg",
    image2: "assets/images/locations/miinthale/3.jpg",
    image3: "assets/images/locations/miinthale/5.jpg",
    image4: "assets/images/locations/miinthale/7.jpg",
    image5: "assets/images/locations/miinthale/8.jpg",
    rating: 4.5,
  ),
  Location(
    id: 2,
    name: "Ruwanwelisaye",
    image: "assets/images/locations/r1.jpg",
    image1: "assets/images/locations/miinthale/1.jpeg",
    image2: "assets/images/locations/miinthale/3.jpg",
    image3: "assets/images/locations/miinthale/5.jpg",
    image4: "assets/images/locations/miinthale/7.jpg",
    image5: "assets/images/locations/miinthale/8.jpg",
    rating: 4.5,
  ),
  Location(
    id: 3,
    name: "Ritigala",
    image: "assets/images/locations/riti1.jpg",
    image1: "assets/images/locations/miinthale/1.jpeg",
    image2: "assets/images/locations/miinthale/3.jpg",
    image3: "assets/images/locations/miinthale/5.jpg",
    image4: "assets/images/locations/miinthale/7.jpg",
    image5: "assets/images/locations/miinthale/8.jpg",
    rating: 4.5,
  ),
  Location(
    id: 4,
    name: "Ranmas Uyana",
    image: "assets/images/locations/ranmasu1.jpg",
    image1: "assets/images/locations/miinthale/1.jpeg",
    image2: "assets/images/locations/miinthale/3.jpg",
    image3: "assets/images/locations/miinthale/5.jpg",
    image4: "assets/images/locations/miinthale/7.jpg",
    image5: "assets/images/locations/miinthale/8.jpg",
    rating: 4.4,
  ),
  Location(
    id: 5,
    name: "Isurumuniya",
    image: "assets/images/locations/Isurumuniya1.jpg",
    image1: "assets/images/locations/miinthale/1.jpeg",
    image2: "assets/images/locations/miinthale/3.jpg",
    image3: "assets/images/locations/miinthale/5.jpg",
    image4: "assets/images/locations/miinthale/7.jpg",
    image5: "assets/images/locations/miinthale/8.jpg",
    rating: 4.3,
  ),
  Location(
    id: 6,
    name: "Jaya Sri Maha Bodhi dscsc svdv ds",
    image: "assets/images/locations/jayasrimaha-bodhi1.jpg",
    image1: "assets/images/locations/miinthale/1.jpeg",
    image2: "assets/images/locations/miinthale/3.jpg",
    image3: "assets/images/locations/miinthale/5.jpg",
    image4: "assets/images/locations/miinthale/7.jpg",
    image5: "assets/images/locations/miinthale/8.jpg",
    rating: 4.1,
  ),
];
