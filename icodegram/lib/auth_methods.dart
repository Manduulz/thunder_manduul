import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> loginUser({
    required String email,
    required String password,
}) async {
    String result = 'Some Error occured';
    try {
      if(email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        result = 'success';
      }
    } catch (e) {
      result = e.toString();
    }
    print(result);
    return result;
  }

  Future<String> signUpUser ({
    required String phonenumber,
    required String password,
    required String username,
}) async {
    String result = 'Some error occured';
    try {
      if (phonenumber.isNotEmpty || password.isNotEmpty || username.isNotEmpty){
        UserCredential credential = await _auth.createUserWithEmailAndPassword(email: phonenumber, password: password);

        _firestore.collection('users').doc(credential.user!.uid).set({
          'username' : username,
          'uid' : credential.user!.uid,
          'email' : phonenumber,
          'following' : [],
          'followers' : [],
        });
      }
    } catch (err) {
      result = err.toString();
    }
    print(result);
    return result;
  }
}