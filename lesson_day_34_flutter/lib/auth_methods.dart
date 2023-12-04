import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:lesson_day_34_flutter/storage_methods.dart';
import 'models/user.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  // sign up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
  }) async {
    String result = 'Some error occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        String img = 'assets/images/user.png';
        String path = img.substring(img.indexOf("/") + 1, img.lastIndexOf("/"));

        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        ByteData data = await rootBundle.load(img);

        Uint8List imageData = data.buffer.asUint8List();
        String photoUrl =
            await StorageMethods().uploadImageToStorage(path, imageData, false);

        model.User user = model.User(
            name: username,
            email: email,
            uid: credential.user!.uid,
            bio: bio,
            photoUrl: photoUrl,
            followers: [],
            following: []);

        _fireStore
            .collection('users')
            .doc(credential.user!.uid)
            .set(user.toJson());

        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  // sign in user
  Future<String> signInUser({
    required String email,
    required String password,
  }) async {
    String result = 'Some error occured';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  // sign out user
  Future<String> signOutUser() async {
    String result = 'Some error occured';
    try {
      await _auth.signOut();
      result = 'success';
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  Future<model.User> getUserDetails() async {
    User? user = _auth.currentUser;
    DocumentSnapshot snapshot =
        await _fireStore.collection('users').doc(user!.uid).get();
    return model.User.fromSnap(snapshot);
  }
}
