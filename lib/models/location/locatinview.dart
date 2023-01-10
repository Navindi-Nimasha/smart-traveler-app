// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../screens/homepage.dart';
import '../settings/settings.dart';
import '../userlocation/locationofuser.dart';
import 'location.dart';
// import 'package:carousel_pro/carousel_pro.dart' show Carousel;

class LocationViewPage extends StatelessWidget {
  final Location location;

  const LocationViewPage({super.key, required this.location});

  //const LocationViewPage({super.key, this.locati});

  // const LocationViewPage({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/locations/bg.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 1, 27, 9), BlendMode.clear),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(73, 0, 0, 0),
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: BodyL(
            location: location,
          ),
          bottomNavigationBar: GNav(
            backgroundColor: Color.fromARGB(179, 18, 66, 33),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(164, 12, 39, 14),
            padding: EdgeInsets.all(13),
            tabMargin: EdgeInsets.all(10),
            // onTabChange: (index) {
            //   print(index);
            // },
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                iconSize: 35,
                text: 'Home',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const HomePage()));
                },
              ),
              GButton(
                icon: Icons.place_outlined,
                iconSize: 35,
                text: 'Location',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const UserCurrentLocation()));
                },
              ),
              GButton(
                icon: Icons.settings_outlined,
                iconSize: 35,
                text: 'Settings',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Settings()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BodyL extends StatelessWidget {
  final Location location;

  const BodyL({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 200.0,
        width: 10.0,
        // child: Carousel(
        //   boxFit: BoxFit.cover,
        //   images: [
        //     AssetImage(location.image1),
        //     AssetImage(location.image2),
        //     AssetImage(location.image3),
        //     AssetImage(location.image4),
        //     AssetImage(location.image5),
        //   ], // we use square brackets when we want to add a list
        //   autoplay: false,
        //   animationCurve: Curves.fastOutSlowIn,
        //   animationDuration: const Duration(milliseconds: 1000),
        //   dotColor: Colors.grey,
        //   dotSize: 4.0,
        // ),
      ),
    );

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      children: <Widget>[
        Center(
          child: Text(
            location.name,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10),
        image_carousel,
        const SizedBox(height: 20),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.directions),
                    color: Colors.white,
                  ),
                  const Text(
                    "Directions",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.save),
                    color: Colors.white,
                  ),
                  const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.share),
                    color: Colors.white,
                  ),
                  const Text(
                    "Share",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(Icons.favorite_border_outlined),
                    color: Colors.white,
                  ),
                  const Text(
                    "Favorite",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Divider(
          color: Colors.white,
          thickness: 1,
        ),
        const Text(
          "Mihintale is a mountain peak near Anuradhapura in Sri Lanka. It is believed by Sri Lankans to be the site of a meeting between the Buddhist monk Mahinda and King Devanampiyatissa which inaugurated the presence of Buddhism in Sri Lanka. It is now a pilgrimage site, and the site of several religious monuments and abandoned structures. ",
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
