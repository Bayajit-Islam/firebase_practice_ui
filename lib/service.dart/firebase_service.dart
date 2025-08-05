import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService extends ChangeNotifier {
  //init  firebase
  final firebaseAuth = FirebaseAuth.instance;

  //init google sign in
  final googleSignIn = GoogleSignIn();

  //get current user
  User? get currentUser => firebaseAuth.currentUser;

  //get authstateChanges
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  //erore message
  String erorreM = '';

  //all method

  //sing in
  Future<UserCredential> signInwithEmail({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //sign up
  Future<UserCredential> signUpwithEmail({
    required String email,
    required String password,
  }) async {
    return await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //sing in wiht google
  Future<UserCredential?> googleSignInMethod() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return null;
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return await FirebaseAuth.instance.signInWithCredential(credential);
      
    } catch (e) {
      return null;
    }
  }

  //log  out
  Future<void> logOut() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
  }

  erorreMessage() {
    return erorreM;
  }
}
