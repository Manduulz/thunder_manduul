import 'package:flutter/material.dart';
import 'package:icodegram/auth_methods.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Container(
                child: Column(children: [
          Text(
            'iCodegram',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ]))));
  }
}
