import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 140, 77),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          // Image(image: ExactAssetImage('assets/top.jpg')),
          SizedBox(
            height: 80.0,
          ),
          Text(
            'SMART TRAVELER',
            style: TextStyle(
                fontSize: 40.0, color: Color.fromARGB(255, 23, 140, 77)),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Settings > Account Settings',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
              textAlign: TextAlign.center),
          SizedBox(
            height: 30.0,
          ),

          ListTile(
            leading: Icon(
              Icons.person_off,
              color: Colors.white,
            ),
            title: Text(
              "Deactivate Account",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.delete,
              color: Colors.white,
            ),
            title: Text(
              "Delete Account",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.compare_arrows,
              color: Colors.white,
            ),
            title: Text(
              "Switch Account",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 0, 11, 3),
    );
  }
}
