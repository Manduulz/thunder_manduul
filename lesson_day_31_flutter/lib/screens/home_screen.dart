import 'package:flutter/material.dart';
import 'package:lesson_day_31_flutter/utils/auth_methods.dart';

import '../models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userName = '';
  @override
  Widget build(BuildContext context) {
    void getUserName() async {
      User userName = await AuthMethods().getUserDetails();
      setState(() {
        this.userName = userName.username;
      });
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 32),
              Text(
                'Home',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                  onPressed: (){
                    getUserName();
                  },
                  child: Text('Get User Name'),
              ),
              SizedBox(height: 32,),
              Text(
                userName,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}