//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class TripPlanPage extends StatelessWidget {
  const TripPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimage.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(255, 61, 100, 63), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                  color: Color.fromARGB(255, 7, 7, 7),
                  gradient: RadialGradient(colors: [
                    Color.fromARGB(255, 216, 202, 202),
                    Color.fromARGB(221, 150, 133, 133),
                    Color.fromARGB(255, 112, 104, 104),
                    Color.fromARGB(239, 8, 8, 8)
                  ], center: Alignment(0.0, -1.6), focalRadius: 6.0),
                ),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: const Text(
                          'Plan Your Trip !',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      // Container(
                      //   margin: const EdgeInsets.only(top: 4),
                      //   child: const Text(
                      //     'Login to your account.',
                      //     style: TextStyle(
                      //       //fontWeight: FontWeight.bold,
                      //       fontSize: 15.0,
                      //       color: Colors.white,
                      //       //height: 0.00001,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.only(top: 5),
                    child: const TripPlanForm(),
                  ),
                ),
              ),
            ],
          ),
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
      ),
    );
  }
}

class TripPlanForm extends StatefulWidget {
  const TripPlanForm({super.key});

  @override
  State<TripPlanForm> createState() => _TripPlanFormState();
}

class _TripPlanFormState extends State<TripPlanForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 18, color: Colors.white);
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 119, 158, 119).withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter start date';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: const Color.fromARGB(255, 119, 158, 119)
                    //     .withOpacity(0.9),
                    contentPadding: const EdgeInsets.only(top: 13, bottom: 13),
                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                    //   borderRadius: BorderRadius.circular(60),
                    //),
                    hintText: 'Start Date',
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Icon(
                          Icons.date_range,
                          color: Color.fromARGB(255, 1, 71, 38),
                          size: 40,
                        ),
                      ),
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 119, 158, 119).withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter end date';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: const Color.fromARGB(255, 119, 158, 119)
                    //     .withOpacity(0.9),
                    contentPadding: const EdgeInsets.only(top: 13, bottom: 13),
                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                    //   borderRadius: BorderRadius.circular(60),
                    //),
                    hintText: 'End Date',
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Icon(
                          Icons.date_range,
                          color: Color.fromARGB(255, 1, 71, 38),
                          size: 40,
                        ),
                      ),
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  keyboardType: TextInputType.datetime,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // Container(
              //   width: 300,
              //   decoration: BoxDecoration(
              //     color:
              //         const Color.fromARGB(255, 119, 158, 119).withOpacity(0.9),
              //     borderRadius: const BorderRadius.all(Radius.circular(60)),
              //     border: Border.all(width: 2, color: Colors.white),
              //   ),
              //   child: TextFormField(
              //     validator: (value) {
              //       if (value == null || value.isEmpty) {
              //         return 'Please enter category';
              //       }
              //       return null;
              //     },
              //     decoration: InputDecoration(
              //       // filled: true,
              //       // fillColor: const Color.fromARGB(255, 119, 158, 119)
              //       //     .withOpacity(0.9),
              //       contentPadding: const EdgeInsets.only(top: 13, bottom: 13),
              //       border: InputBorder.none,
              //       // enabledBorder: OutlineInputBorder(
              //       //   borderSide: const BorderSide(
              //       //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
              //       //   borderRadius: BorderRadius.circular(60),
              //       //),
              //       hintText: 'Category',
              //       icon: Padding(
              //         padding: const EdgeInsets.only(left: 0),
              //         child: Container(
              //           padding: const EdgeInsets.all(8),
              //           margin: const EdgeInsets.only(right: 0),
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             shape: BoxShape.circle,
              //             border: Border.all(color: Colors.white),
              //           ),
              //           child: const Icon(
              //             Icons.category_outlined,
              //             color: Color.fromARGB(255, 1, 71, 38),
              //             size: 40,
              //           ),
              //         ),
              //       ),
              //       hintStyle:
              //           const TextStyle(fontSize: 18, color: Colors.white),
              //     ),
              //     style: const TextStyle(fontSize: 18, color: Colors.white),
              //     keyboardType: TextInputType.emailAddress,
              //     textInputAction: TextInputAction.next,
              //   ),
              // ),
              // const SizedBox(
              //   height: 30,
              //),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 119, 158, 119).withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter number of adults';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: const Color.fromARGB(255, 119, 158, 119)
                    //     .withOpacity(0.9),
                    contentPadding: const EdgeInsets.only(top: 13, bottom: 13),
                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                    //   borderRadius: BorderRadius.circular(60),
                    //),
                    hintText: 'No of Adults',
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Icon(
                          Icons.family_restroom_outlined,
                          color: Color.fromARGB(255, 1, 71, 38),
                          size: 40,
                        ),
                      ),
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 119, 158, 119).withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter number of adults';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: const Color.fromARGB(255, 119, 158, 119)
                    //     .withOpacity(0.9),
                    contentPadding: const EdgeInsets.only(top: 13, bottom: 13),
                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                    //   borderRadius: BorderRadius.circular(60),
                    //),
                    hintText: 'No of Kids',
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Icon(
                          Icons.baby_changing_station_outlined,
                          color: Color.fromARGB(255, 1, 71, 38),
                          size: 40,
                        ),
                      ),
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 119, 158, 119).withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Start Location';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: const Color.fromARGB(255, 119, 158, 119)
                    //     .withOpacity(0.9),
                    contentPadding: const EdgeInsets.only(top: 13, bottom: 13),
                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                    //   borderRadius: BorderRadius.circular(60),
                    //),
                    hintText: 'Start Location',
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 1, 71, 38),
                          size: 40,
                        ),
                      ),
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 119, 158, 119).withOpacity(0.9),
                  borderRadius: const BorderRadius.all(Radius.circular(60)),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Start Location';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: const Color.fromARGB(255, 119, 158, 119)
                    //     .withOpacity(0.9),
                    contentPadding: const EdgeInsets.only(top: 13, bottom: 13),
                    border: InputBorder.none,
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       width: 1, color: Color.fromARGB(255, 241, 245, 237)),
                    //   borderRadius: BorderRadius.circular(60),
                    //),
                    hintText: 'End location',
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 1, 71, 38),
                          size: 40,
                        ),
                      ),
                    ),
                    hintStyle: textStyle,
                  ),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  //borderRadius; BorderRadius.circular(80.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 154, 231, 161),
                      Color.fromARGB(255, 33, 134, 36),
                      Color.fromARGB(255, 1, 116, 68)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    color: Colors.green,
                    //borderRadius; BorderRadius.circular(80.0),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                      ),
                    ),
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'Get Trip Plan',
                              style:
                                  TextStyle(fontSize: 23, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_circle_right_outlined,
                              color: Color.fromARGB(255, 2, 117, 30),
                            ),
                          ],
                        ),
                      ),
                      //icon: Icon(Icons.arrow_circle_down_outlined),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
