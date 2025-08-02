import 'package:firebase_google_auth/components/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Firebase'),
        centerTitle: true,
      ),
    ); 
  }
}
