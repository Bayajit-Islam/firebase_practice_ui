import 'package:firebase_google_auth/components/my_button.dart';
import 'package:flutter/material.dart';

class UpdateUsername extends StatefulWidget {
  const UpdateUsername({super.key});

  @override
  State<UpdateUsername> createState() => _UpdateUsernameState();
}

class _UpdateUsernameState extends State<UpdateUsername> {
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(height: 12,),
            MyButton(buttonName: 'Update Username', route:() {
              //enter update username method here
              
            },)
          ],
        ),
      ),
    );
  }
}
