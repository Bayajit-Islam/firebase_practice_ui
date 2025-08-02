import 'package:firebase_google_auth/pages/home_pages.dart';
import 'package:firebase_google_auth/pages/profile_pages.dart';
import 'package:firebase_google_auth/pages/setting_pages.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(child: Icon(Icons.person, size: 173)),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePages()),
                  );
                },
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePages()),
                  );
                },
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPages()),
                  );
                },
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
            ],
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePages()),
              );
            },
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
