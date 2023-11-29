import 'package:flutter/material.dart';
import 'package:lesson_day_32_flutter/add_post_screen.dart';
import 'package:lesson_day_32_flutter/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'auth_methods.dart';
import 'models/user.dart' as model;
import 'models/user.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    addData();
  }

  addData() async {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    await userProvider.refreshUser();
  }

  String userName = '';

  @override
  Widget build(BuildContext context) {
    model.User? user = Provider.of<UserProvider>(context).getUser;
    void getUserName() async {
      User user = await AuthMethods().getUserDetails();
      setState(() {
        userName = user.name;
      });
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                'Home Screen',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'Username',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                userName,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 32,
              ),
              ElevatedButton(onPressed: () {
                getUserName();
              }, child: Text('Get User Details')),
              ElevatedButton(
                  onPressed: () {
                    AuthMethods().signOutUser();
                  },
                  child: Text('Sign Out')),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddPostScreen()));
              }, child: Text('add post'))
            ],
          ),
        ),
      )),
    );
  }
}
