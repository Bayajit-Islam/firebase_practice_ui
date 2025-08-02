import 'package:firebase_google_auth/pages/login_pages.dart';
import 'package:firebase_google_auth/pages/register_pages.dart';
import 'package:flutter/material.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF12325E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Icon(Icons.person, size: 170),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPages()),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(34, 255, 255, 255),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInPages()),
                );
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(34, 255, 255, 255),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Center(
                    child: Text('Login', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
