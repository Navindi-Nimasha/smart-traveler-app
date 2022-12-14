import 'package:flutter/material.dart';
import 'models/location/locationlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //var location;

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //var location;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login Page ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LListPage(),
    );
  }
}
