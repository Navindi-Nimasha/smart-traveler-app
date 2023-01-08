import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'models/shop/register_shop.dart';
import 'screens/homepage.dart';
=======
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/loginpage.dart';

import 'models/location/locationlist.dart';
>>>>>>> 8706d55929f6247a8896a476ccc845f1e9ba8270

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
<<<<<<< HEAD
      home: const RegisterSPage(),
=======
      home: const HomePage(),
>>>>>>> 8706d55929f6247a8896a476ccc845f1e9ba8270
    );
  }
}
