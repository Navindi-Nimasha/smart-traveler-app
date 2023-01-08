import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/settings/password_settings.dart';

import 'account_settings.dart';
import 'edit_profile.dart';
import 'help.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
          Text('Settings',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
              textAlign: TextAlign.center),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Divider(
                color: Color.fromARGB(255, 23, 140, 77),
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts,
                  color: Colors.white,
                ),
                title: Text(
                  "Acount Settings",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return AccountSettings();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts,
                  color: Colors.white,
                ),
                title: Text("Password Settings",
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PasswordSettings();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts,
                  color: Colors.white,
                ),
                title:
                    Text("Edit Profile", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EditProfile();
                  }));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts,
                  color: Colors.white,
                ),
                title: Text("Help", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Help();
                  }));
                },
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 0, 11, 3),
    );
  }
}
