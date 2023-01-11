import 'package:flutter/material.dart';

class Location {
  final String image, image1, image2, image3, image4, image5, name, description;
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
    required this.description,
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
      description:
          "Mihintale is a mountain peak near Anuradhapura in Sri Lanka. It is believed by Sri Lankans to be the site of a meeting between the Buddhist monk Mahinda and King Devanampiyatissa which inaugurated the presence of Buddhism in Sri Lanka. It is now a pilgrimage site, and the site of several religious monuments and abandoned structures. "),
  Location(
    id: 2,
    name: "Ruwanwelisaye",
    image: "assets/images/locations/r1.jpg",
    image1: "assets/images/locations/ruwanweliseya/1.jpeg",
    image2: "assets/images/locations/ruwanweliseya/2.jpg",
    image3: "assets/images/locations/ruwanweliseya/3.jpg",
    image4: "assets/images/locations/ruwanweliseya/4.jpg",
    image5: "assets/images/locations/ruwanweliseya/5.jpg",
    rating: 4.5,
    description:
        " The Ruwanweli Maha Seya, also known as the Mahathupa (lit. 'the Great Thupa'), is a stupa (a hemispherical structure containing relics) in Anuradhapura, Sri Lanka. Two quarts or one Dona of the Buddha's relics are enshrined in the stupa, making it the largest collection of his relics anywhere.[1] It was built by Sinhalese King Dutugemunu in c. 140 B.C., who became king of Sri Lanka after a war in which the Chola King Elāra (Ellalan) was defeated. It is also known as Swarnamali Seya, Svaṇṇamāli Mahaceti (in Pali) and Rathnamali Seya. This is one of the Solosmasthana (the 16 places of veneration) and the Atamasthana (the 8 places of veneration). The stupa is one of the world's tallest ancient monuments, standing at 103 m (338 ft) and with a circumference of 290 m (951 ft). The original stupa had been about 55 m (180 ft) in height and was renovated by many kings. The Kaunghmudaw Pagoda in Sagaing, Myanmar is modelled after this stupa[2] The Mahavamsa contains a detailed account on the construction and the opening ceremony of the stupa.The stupa was covered by wilderness as of the 19th century. After fund raising efforts by a bhikkhu, it was renovated in the early 20th century. The Ruwanweli Seya Restoration Society was set up, most notably the philanthropist Hendrick Appuhamy, donated Rs 20 million (1912 ) adjusted for inflation in 2021 it is worth 611 million US Dollars for the restoration works,[3] the foundation was founded in 1902 and the modern day crowning (a crown is a large gem placed at the very top of the stupa) was done on June 17, 1940, and the final crowning of the stupa took place on November 26, 2019.",
  ),
  Location(
    id: 3,
    name: "Ritigala",
    image: "assets/images/locations/riti1.jpg",
    image1: "assets/images/locations/riti/1.jpg",
    image2: "assets/images/locations/riti/2.jpg",
    image3: "assets/images/locations/riti/3.jpg",
    image4: "assets/images/locations/riti/4.jpg",
    image5: "assets/images/locations/riti/5.jpg",
    rating: 4.5,
    description:
        "Ritigala is a range of mountains which is near to Anuradhapura in the dry zone of Sri Lanka. It is about 42 km from Anuradhapura and can be reached passing Maradankadawala and turning off at Ganewelpola along Anuradhapura-Habarana highway.Ritigala Nature Reserve is one of the three strict nature reserves in Sri Lanka and is about 5 Sq. km in land extent. Ritigala mountain range rises abruptly 2000 feet from the surrounding terrain which is about 500 feet above sea level .There are several peaks in the range and the highest peak is the Ritigala. Kodigala or the Flag Rock is the highest point (of Ritigala Peak) in this mountain range and is of a height of 2514 feet. It is also the highest elevation between the Central Hills of sri Lanka and the South Indian mountain ranges. This mountain range comprises three types of forests.The bottom part of the mountain range is Dry Mixed Evergreen Forest type,the middle part of the range is Tropical Montane Forest type and the highest terrain of Upper Montane Forest type. The mountain summits attract more rainfall than the surrounding areas and amidst dry weather at lower plains, the peaks get cladded with clouds and mist lowering the temperature at the summits. Historically, this has been called as Arittha Pabbatha (the mountain of Aritta) which can be translated as 'Dreadful Rock' or 'Safety Rock' or even 'Riti trees' growing upon it. Around 3rd Century BC, Aritta , who was the Chief Minister of King Devanampiyatissa, who later was ordained as the First Sri Lankan Monk and became an Arahath, spent his monastic life at Ritigala.",
  ),
  Location(
    id: 4,
    name: "Ranmas Uyana",
    image: "assets/images/locations/ranmasu1.jpg",
    image1: "assets/images/locations/ranmasu/1.jpg",
    image2: "assets/images/locations/ranmasu/2.jpg",
    image3: "assets/images/locations/ranmasu/3.jpg",
    image4: "assets/images/locations/ranmasu/4.jpg",
    image5: "assets/images/locations/ranmasu/5.jpg",
    rating: 4.4,
    description:
        "Ranmasu Uyana is an ancient place of Sri Lanka which is located in the Golden city of Anuradhapura. There is an amazing and unexplained artifact of ancient civilization of Sri Lanka carved on the rock in Ranmasu Uyana. This artifact is called “Sakwala Chakraya”, also known as “The Star Gate of Sri Lanka”. It is sandwiched between the Thissa Wewa Reservoir and the Isurumuniya Rock Temple. All of them are creating the pleasure garden of the ancient Sri Lanka royals that are the secrets still mysterious by modern Knowledge. It is possibly one of the most hidden mysteries of Human Civilization.",
  ),
  Location(
    id: 5,
    name: "Isurumuniya",
    image: "assets/images/locations/Isurumuniya1.jpg",
    image1: "assets/images/locations/isuru/1.jpg",
    image2: "assets/images/locations/isuru/2.jpg",
    image3: "assets/images/locations/isuru/3.jpg",
    image4: "assets/images/locations/isuru/4.jpg",
    image5: "assets/images/locations/isuru/5.jpg",
    rating: 4.3,
    description:
        "The Isurumuniya Viharaya was constructed during the reign of Devanampiya Tissa who governed in Anuradhapura, the country’s capital. During his reign 500 high caste children were ordained, and Isurumuniya was built as a monastic complex to house all of them. Thereafter it was renovated by King Kasyapa (473 – 491 AD) who renamed it “Boupulvan Kasubgiri Radmaha Vehera” – a combination of his name along with his two daughters’. Connected to the Temple is a cave with a cliff above it. A small Dagoba was built on this cliff during a later period. At the picturesque entrance to Isurumuniya a rock can be seen either side of a crevice, and this rock seems to rise out of a pond.",
  ),
  Location(
    id: 6,
    name: "Jaya Sri Maha Bodhi",
    image: "assets/images/locations/jayasrimaha-bodhi1.jpg",
    image1: "assets/images/locations/miinthale/1.jpeg",
    image2: "assets/images/locations/miinthale/3.jpg",
    image3: "assets/images/locations/miinthale/5.jpg",
    image4: "assets/images/locations/miinthale/7.jpg",
    image5: "assets/images/locations/miinthale/8.jpg",
    rating: 4.1,
    description:
        "The sacred city of Anuradhapura has been nominated by the UNESCO as a World Heritage. The main reason for the historical city of Anuradhapura to become a sacred city was the Jaya Sri Maha Bodhi. This sacred tree has been planted in the historical Maha Megha Vana Royal Park in Anuradhapura in the month of ‘Unduvap’ (December), 236 BC, according to the written facts. The sacred Bodhi sapling has been ceremonially brought here by Arahant Sanghamitta Maha Theree, under instructions of Arahant Mihindu Maha Thero. King Devanampiyatissa who ruled Sri Lanka in this period has planted this Bodhi tree with great pageantry in the Maha Megha Vana Royal Park dedicated to the venerable bhikkhus. The present age of the Anuradhapura Jaya Sri Maha Bodhi is 2,247 years.",
  ),
];
