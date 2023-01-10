import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/homepage.dart';
import 'package:flutter_application_1/screens/loginpage.dart';
import 'package:flutter_application_1/screens/profileTraveler.dart';

import 'models/location/locationlist.dart';

//import 'screens/home.dart';

//import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Page ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
