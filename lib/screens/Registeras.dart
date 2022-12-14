import 'package:flutter/material.dart';
import '../models/guider/register_g.dart';
import '../models/shop/register_shop.dart';
import '../models/traveller/register_trav.dart';
import 'sidebar.dart';

class RegisterAs extends StatefulWidget {
  const RegisterAs({super.key});

  @override
  State<RegisterAs> createState() => _HomePageState();
}

class _HomePageState extends State<RegisterAs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      // bottomNavigationBar: GNav(
      //   backgroundColor: Color.fromARGB(255, 15, 83, 19),
      //   color: Colors.white,
      //   activeColor: Colors.white,
      //   tabBackgroundColor: Color.fromARGB(164, 12, 39, 14),
      //   padding: EdgeInsets.all(13),
      //   tabMargin: EdgeInsets.all(10),
      //   tabs: [
      //     GButton(
      //       icon: Icons.home_outlined,
      //       iconSize: 35,
      //       text: 'Home',
      //     ),
      //     GButton(
      //       icon: Icons.place_outlined,
      //       iconSize: 35,
      //       text: 'Location',
      //     ),
      //     GButton(
      //       icon: Icons.settings_outlined,
      //       iconSize: 35,
      //       text: 'Settings',
      //     ),
      //   ],
      // ),
      extendBodyBehindAppBar: false,
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 196, 202, 212),
      //   elevation: 0.0,
      //   leading: Builder(
      //     builder: (context) => IconButton(
      //       onPressed: () => Scaffold.of(context).openDrawer(),
      //       icon: Icon(Icons.menu, color: Colors.black),
      //       iconSize: 35,
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.only(right: 10.0),
      //       child: PopupMenuButton(
      //         itemBuilder: (context) => [
      //           PopupMenuItem(
      //             child: ListTile(
      //                 leading: Icon(Icons.login_outlined, color: Colors.black),
      //                 title: Text(
      //                   "Log In",
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.bold, fontSize: 18),
      //                 )),
      //           ),
      //           PopupMenuItem(
      //             child: ListTile(
      //                 leading:
      //                     Icon(Icons.app_registration, color: Colors.black),
      //                 title: Text(
      //                   "Register As",
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.bold, fontSize: 18),
      //                 )),
      //           ),
      //           PopupMenuItem(
      //             child: Text(
      //               "Traveller",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ),
      //           PopupMenuItem(
      //             child: Text(
      //               "Guider",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ),
      //           PopupMenuItem(
      //             child: Text(
      //               "Shop",
      //               style: TextStyle(fontSize: 18),
      //             ),
      //           ),
      //           PopupMenuItem(
      //             child: ListTile(
      //                 leading: Icon(Icons.logout_outlined, color: Colors.black),
      //                 title: Text(
      //                   "Log Out",
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.bold, fontSize: 18),
      //                 )),
      //           ),
      //         ],
      //         child: Icon(
      //           Icons.account_circle_rounded,
      //           size: 35,
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/homepage_new/bgimage1.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(120, 80, 79, 79), BlendMode.darken),
            ),
          ),
          child: Column(
            children: [
              Flexible(
                child: SizedBox(
                  height: 200,
                ),
              ),
              Container(
                height: 450,
                width: 430,
                // decoration: BoxDecoration(
                //   color: Colors.green.withOpacity(0.3),
                //   border: Border.all(color: Colors.white, width: 1),
                //   borderRadius: BorderRadius.vertical(top: Radius.circular(70)),
                // ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 13,
                      ),
                      InkResponse(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterTPage()));
                        },
                        child: Container(
                          height: 130,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 93, 94, 93)
                                .withOpacity(0.7),
                            border: Border.all(color: Colors.white, width: 0.5),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                    'assets/images/homepage_new/wheretogo.jpg'),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Register As',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.yellow,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'Traveler',
                                      style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 60),
                                  //   child: Text(
                                  //     'Planning',
                                  //     style: TextStyle(
                                  //         fontSize: 22,
                                  //         color: Colors.white,
                                  //         fontWeight: FontWeight.bold),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      InkResponse(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterGPage()));
                        },
                        child: Container(
                          height: 130,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 93, 94, 93)
                                .withOpacity(0.7),
                            border: Border.all(color: Colors.white, width: 0.5),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Register As',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.yellow,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text(
                                      'Guider',
                                      style: TextStyle(
                                          fontSize: 27,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
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
                      SizedBox(
                        height: 13,
                      ),
                      InkResponse(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterSPage()));
                        },
                        child: Container(
                          height: 130,
                          width: 360,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 93, 94, 93)
                                .withOpacity(0.7),
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
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Register As',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.yellow,
                                          letterSpacing: 2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text(
                                      'Shop Owner',
                                      style: TextStyle(
                                          fontSize: 27,
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
                      // SizedBox(
                      //   height: 13,
                      // ),
                      // InkResponse(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const LListPage()));
                      //   },
                      //   child: Container(
                      //     height: 130,
                      //     width: 360,
                      //     decoration: BoxDecoration(
                      //       color: Colors.green.withOpacity(0.7),
                      //       border: Border.all(color: Colors.white, width: 0.5),
                      //       borderRadius: BorderRadius.circular(40),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Padding(
                      //               padding: const EdgeInsets.only(left: 20),
                      //               child: Text(
                      //                 'GET STARTED',
                      //                 style: TextStyle(
                      //                     fontSize: 12,
                      //                     color: Colors.yellow,
                      //                     letterSpacing: 2,
                      //                     fontWeight: FontWeight.w600),
                      //               ),
                      //             ),
                      //             SizedBox(
                      //               height: 10,
                      //             ),
                      //             Padding(
                      //               padding: const EdgeInsets.only(left: 40),
                      //               child: Text(
                      //                 'Where to Go',
                      //                 style: TextStyle(
                      //                     fontSize: 22,
                      //                     color: Colors.white,
                      //                     fontWeight: FontWeight.bold),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 5,
                      //         ),
                      //         ClipRRect(
                      //           borderRadius: BorderRadius.circular(40),
                      //           child: Image.asset(
                      //               'assets/images/homepage_new/wheretogo.jpg'),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
