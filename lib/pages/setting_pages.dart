import 'package:firebase_google_auth/components/my_button.dart';
import 'package:firebase_google_auth/pages/delet_account.dart';
import 'package:firebase_google_auth/pages/update_password.dart';
import 'package:firebase_google_auth/pages/update_username.dart';
import 'package:flutter/material.dart';

class SettingPages extends StatelessWidget {
  const SettingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            MyButton(
              buttonName: 'Update UserName',
              route: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpdateUsername()),
                );
              },
            ),
            MyButton(
              buttonName: 'Update Password',
              route: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpdatePassword()),
                );
              },
            ),
            MyButton(
              buttonName: 'Delet Account',
              route: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeletAccount()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
