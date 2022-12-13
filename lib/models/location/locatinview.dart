import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LocationViewPage extends StatelessWidget {
  const LocationViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[900],
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
        body: Column(children: []),
        bottomNavigationBar: const GNav(
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
            ),
            GButton(
              icon: Icons.place_outlined,
              iconSize: 35,
              text: 'Location',
            ),
            // GButton(
            //   icon: Icons.favorite_border_outlined,
            //   text: 'Likes',
            // ),
            GButton(
              icon: Icons.settings_outlined,
              iconSize: 35,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
