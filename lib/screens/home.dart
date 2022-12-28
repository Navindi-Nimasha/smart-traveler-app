import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../models/guider/glist_page.dart';
import '../models/shop/shoplist_page.dart';
import '../models/trip_plan/plan_input.dart';
//import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const GNav(
        backgroundColor: Color.fromARGB(255, 15, 83, 19),
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
          ),
          GButton(
            icon: Icons.place_outlined,
            iconSize: 35,
            text: 'Location',
          ),
          GButton(
            icon: Icons.settings_outlined,
            iconSize: 35,
            text: 'Settings',
          ),
        ],
      ),
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 202, 212),
        elevation: 0.0,
        title: Container(
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(50)),
          child: const Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  // suffixIcon: IconButton(
                  //   icon: const Icon(Icons.clear),
                  //   onPressed: () {},
                  // ),
                  hintText: 'Where to go...',
                  border: InputBorder.none),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black),
          iconSize: 35,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_rounded),
              iconSize: 35,
              color: Colors.black)
        ],
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/homepage/homepage.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const Flexible(
                child: SizedBox(
                  height: 370,
                ),
              ),
              Container(
                height: 450,
                width: 430,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.3),
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(70)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    InkResponse(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TripPlanPage()),
                      ),
                      child: Container(
                        height: 130,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.7),
                          border: Border.all(color: Colors.white, width: 0.5),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                  'assets/images/homepage/Automatic Trip Planning.jpg'),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'GET STARTED',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.yellow,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text(
                                    'Automatic Trip',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Text(
                                    'Planning',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    InkResponse(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GListPage()),
                      ),
                      child: Container(
                        height: 130,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.7),
                          border: Border.all(color: Colors.white, width: 0.5),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'GET STARTED',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.yellow,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Text(
                                    'Find Your Guider',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                  'assets/images/homepage/Find Your Guider.jpg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    InkResponse(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SListPage()),
                      ),
                      child: Container(
                        height: 130,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.7),
                          border: Border.all(color: Colors.white, width: 0.5),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                  'assets/images/homepage/Find Travel Gears.jpg'),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'GET STARTED',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.yellow,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Find Travel Gears',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
