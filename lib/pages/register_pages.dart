import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_google_auth/pages/login_pages.dart';
import 'package:firebase_google_auth/service.dart/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  final emailController = TextEditingController();

  final passWordController = TextEditingController();

  final confirmPassController = TextEditingController();
  //erore masage
  String erorreMessage = '';

  //sign in
  void signUp() async {
    circleProgress();
    if (passWordController.text == confirmPassController.text) {
      try {
        await Provider.of<FirebaseService>(context, listen: false).signUpwithEmail(
          email: emailController.text,
          password: passWordController.text,
        );
        popPages();
        setState(() {
          erorreMessage = "Account Create Succesfull- Please Log in";
        });
        if (!mounted) return;
        Navigator.of(context).popUntil((route) => route.isFirst);
      } on FirebaseAuthException catch (e) {
        popPages();
        setState(() {
          erorreMessage = e.message ?? "There is an erorre";
        });
      }
    } else {
      setState(() {
        popPages();
        erorreMessage = "Password Not Same";
      });
    }
  }

  //loading circle progress
  void circleProgress() {
    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  //pop pages
  void popPages() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final errorM = Provider.of<FirebaseService>(context);
    return Scaffold(
      backgroundColor: Color(0xff00224F),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Register',
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
              'Create a account',
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
            'Wellcome Our App\n Sign up Please',
            textAlign: TextAlign.center,
            style: TextStyle(color: const Color.fromARGB(40, 255, 255, 255)),
          ),
          //textfield
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
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
              style: TextStyle(color: Colors.white),
              controller: passWordController,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),

          //textfieald
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: confirmPassController,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),

          //erorre massage
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: Center(
              child: Text(
                erorreMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //loginbutton
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: GestureDetector(
              onTap: signUp,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Center(child: Text('Register')),
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
          //gmail login button
          SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: GestureDetector(
              onTap: () async {
                final user = await Provider.of<FirebaseService>(
                  context,
                  listen: false
                ).googleSignInMethod();
                if (user == null) {
                setState(() {
                    erorreMessage = errorM.erorreMessage();
                  });
                } 
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
                      Icon(Icons.android, color: Colors.white),
                      Text('Google', style: TextStyle(color: Colors.white)),
                    ],
                  ),
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
                "You Have Account?",
                style: TextStyle(
                  color: const Color.fromARGB(75, 255, 255, 255),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPages()),
                  );
                },
                child: Text(
                  'Log in',
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
