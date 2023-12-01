import 'package:flutter/material.dart';
import 'package:icodegram/utils/auth_methods.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text('iCodegram',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),),
              ElevatedButton(
              onPressed: () {
                AuthMethods().signOut();
              },
              child: Text('Sign Out'),
            ),]
          ),
        )
      ),
    );
  }
}
