import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseService extends ChangeNotifier {
  //init  firebase
  final firebaseAuth = FirebaseAuth.instance;

  //get current user
  User? get currentUser => firebaseAuth.currentUser;

  //get authstateChanges
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  //all method

  //sing in
  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //sign up
  Future<UserCredential> signUp({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //log  out
  Future<void> logOut() async {
    await firebaseAuth.signOut();
  }
}
