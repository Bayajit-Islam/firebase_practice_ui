import 'package:firebase_google_auth/service.dart/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseService>(context).currentUser;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            //profile
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text(user!.displayName ?? 'none'),
                  subtitle: Text("${user.email}"),
                ),
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}
