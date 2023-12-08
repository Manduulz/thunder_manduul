import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icodegram/providers/user_provider.dart';
import 'package:icodegram/utils/auth_methods.dart';
import 'package:icodegram/widgets/post_card.dart';
import 'package:provider/provider.dart';

import '../model/user_model.dart' as model;

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

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    model.User? user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Column(children: [
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
                StreamBuilder(
                    stream: FirebaseFirestore.instance.collection('posts').snapshots(),
                    builder: (context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                      if(snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                          itemBuilder: (ctx, index) => Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: width * 0.1,
                              vertical: 15
                            ),
                            child: PostCard(
                              snap: snapshot.data!.docs[index].data(),
                            ),
                          )
                      );
                    }
                )
              ]),
            ],
          ),

        ],
      )),
    );
  }
}
