import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../models/settings/settings.dart';
import '../models/userlocation/locationofuser.dart';
import 'homepage.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/contactus/bg.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(87, 114, 117, 114), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor:
                const Color.fromARGB(255, 15, 83, 19).withOpacity(0.8),
            leading: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: const Icon(Icons.arrow_back)),
            title: const Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text(
                "Contact Us",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.call,
                          color: Colors.black,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '070 5555555',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'smarttraveler.contacts@gmail.com',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.location_city,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'No. 900, Main road,Kottawa',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        'Pannipitiya',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: GNav(
            backgroundColor: Color.fromARGB(179, 18, 66, 33),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(164, 12, 39, 14),
            padding: EdgeInsets.all(13),
            tabMargin: EdgeInsets.all(10),
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
