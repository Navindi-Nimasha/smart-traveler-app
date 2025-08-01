import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/guider/glist_page.dart';
import 'package:flutter_application_1/models/shop/shoplist_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import '../models/location/locationlist.dart';
import '../models/settings/settings.dart';
import '../models/trip_plan/plan_input.dart';
//import '../models/userlocation/locationofuser.dart';
//import 'bottum nav bar/bnavbar.dart';
//import 'bottum nav bar/bnavbar.dart';
import '../models/userlocation/locationofuser.dart';
import 'sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;
  // List pages = [
  //   HomePage(),
  //   UserCurrentLocation(),
  //   Settings(),
  // ];

  // void onTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      bottomNavigationBar: GNav(
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HomePage()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Settings()));
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 202, 212),
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu, color: Colors.black),
            iconSize: 35,
          ),
        ),
        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(right: 10.0),
        //     child: PopupMenuButton(
        //       itemBuilder: (context) => [
        //         PopupMenuItem(
        //           child: ListTile(
        //               leading: Icon(Icons.login_outlined, color: Colors.black),
        //               title: Text(
        //                 "Log In",
        //                 style: TextStyle(
        //                     fontWeight: FontWeight.bold, fontSize: 18),
        //               )),
        //         ),
        //         PopupMenuItem(
        //           child: ListTile(
        //               leading:
        //                   Icon(Icons.app_registration, color: Colors.black),
        //               title: Text(
        //                 "Register As",
        //                 style: TextStyle(
        //                     fontWeight: FontWeight.bold, fontSize: 18),
        //               )),
        //         ),
        //         PopupMenuItem(
        //           child: Text(
        //             "Traveller",
        //             style: TextStyle(fontSize: 18),
        //           ),
        //         ),
        //         PopupMenuItem(
        //           child: Text(
        //             "Guider",
        //             style: TextStyle(fontSize: 18),
        //           ),
        //         ),
        //         PopupMenuItem(
        //           child: Text(
        //             "Shop",
        //             style: TextStyle(fontSize: 18),
        //           ),
        //         ),
        //         PopupMenuItem(
        //           child: ListTile(
        //               leading: Icon(Icons.logout_outlined, color: Colors.black),
        //               title: Text(
        //                 "Log Out",
        //                 style: TextStyle(
        //                     fontWeight: FontWeight.bold, fontSize: 18),
        //               )),
        //         ),
        //       ],
        //       child: Icon(
        //         Icons.account_circle_rounded,
        //         size: 35,
        //         color: Colors.black,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      // bottomNavigationBar: MyNavigationBar(),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/homepage_new/homepage.jpg"),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    InkResponse(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TripPlanPage()));
                      },
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
                                  'assets/images/homepage_new/Automatic Trip Planning.jpg'),
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
                                    'Automatic Trips',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Text(
                                    'Plannings',
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GListPage()));
                      },
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
                                    'Find the Guider',
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
                                  'assets/images/homepage_new/Find Your Guider.jpg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    InkResponse(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SListPage()));
                      },
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
                                  'assets/images/homepage_new/Find Travel Gears.jpg'),
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
                    const SizedBox(
                      height: 13,
                    ),
                    InkResponse(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LListPage()));
                      },
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
                                    'Where to Go',
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
                                  'assets/images/homepage_new/wheretogo.jpg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
