import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/settings/settings.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 15, 83, 19).withOpacity(0.8),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Chamika Dilshan'),
              accountEmail: Text(
                'beligaladilshan@gmail.com',
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/homepage_new/bella.jpg',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 83, 19),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Account Settings',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Help',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'App Settings',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_phone,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Contact Us',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onTap: () => null,
            ),
          ],
        ),
      ),
    );
  }
}
