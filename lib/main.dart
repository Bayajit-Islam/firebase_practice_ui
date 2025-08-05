import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_google_auth/firebase_options.dart';
import 'package:firebase_google_auth/pages/auth_pages.dart';
import 'package:firebase_google_auth/service.dart/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(
    ChangeNotifierProvider(create:(context) => FirebaseService() ,
    child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: AuthPages());
  }
}
