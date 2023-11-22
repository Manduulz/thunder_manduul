import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

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
          'followers' : []
        });
        result = 'success';
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}