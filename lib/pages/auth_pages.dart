import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_google_auth/pages/home_pages.dart';
import 'package:firebase_google_auth/pages/intro_pages.dart';
import 'package:firebase_google_auth/service.dart/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPages extends StatelessWidget {
  const AuthPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: Provider.of<FirebaseService>(context).authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePages();
          } else {
            return IntroPages();
          }
        },
      ),
    );
  }
}
