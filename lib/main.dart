import 'package:flutter/material.dart';
import 'models/shop/register_shop.dart';
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
      home: const RegisterSPage(),
    );
  }
}
