import 'package:flutter/material.dart';

import 'settings.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 140, 77),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
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
          Text('Settings > Edit Profile',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
              textAlign: TextAlign.center),
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            title: Text(
              "Change Name",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.edit_attributes_outlined,
              color: Colors.white,
            ),
            title: Text(
              "Change Contact Number",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 0, 11, 3),
    );
  }
}
