import 'package:firebase_google_auth/pages/home_pages.dart';
import 'package:firebase_google_auth/pages/register_pages.dart';
import 'package:flutter/material.dart';

class LogInPages extends StatefulWidget {
  const LogInPages({super.key});

  @override
  State<LogInPages> createState() => _LogInPagesState();
}

class _LogInPagesState extends State<LogInPages> {
  final emailController = TextEditingController();

  final passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00224F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //text
          SizedBox(height: 30),
          Center(
            child: Text(
              'Hello Wellcome Back',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          //text
          SizedBox(height: 16),
          Text(
            'Wellcome Back Please\n Sign in Again',
            textAlign: TextAlign.center,
            style: TextStyle(color: const Color.fromARGB(40, 255, 255, 255)),
          ),
          //textfield
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          //textfield
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: TextField(
              controller: passWordController,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          //loginbutton
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Center(child: Text('Login')),
                ),
              ),
            ),
          ),
          //or
          SizedBox(height: 54),
          Center(
            child: Text('or', style: TextStyle(color: Colors.white)),
          ),
          //facebook login button
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePages()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(34, 255, 255, 255),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.white),
                      Text('Facebook', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //gmail login button
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(34, 255, 255, 255),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.android, color: Colors.white),
                    Text('Google', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          //allready habe account
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't Have Account?",
                style: TextStyle(
                  color: const Color.fromARGB(75, 255, 255, 255),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPages()),
                  );
                },
                child: Text(
                  'sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
