import 'package:firebase_google_auth/components/my_button.dart';
import 'package:flutter/material.dart';

class DeletAccount extends StatefulWidget {
  const DeletAccount({super.key});

  @override
  State<DeletAccount> createState() => _DeletAccountState();
}

class _DeletAccountState extends State<DeletAccount> {
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: currentPasswordController,
              decoration: InputDecoration(
                hintText: 'Current Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height: 5),
            TextField(
              controller: newpasswordController,
              decoration: InputDecoration(
                hintText: 'New Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height: 5),
            TextField(
              controller: rePasswordController,
              decoration: InputDecoration(
                hintText: 'Re-Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height: 12),
            MyButton(
              buttonName: 'Update Password',
              route: () {
                //enter password update method
              },
            ),
          ],
        ),
      ),
    );
  }
}
