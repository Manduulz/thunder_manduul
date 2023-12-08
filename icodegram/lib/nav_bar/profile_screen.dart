import 'package:flutter/material.dart';
import 'package:icodegram/login_page.dart';
import 'package:provider/provider.dart';
import '../images_sync.dart';
import '../model/user_model.dart' as model;
import '../providers/user_provider.dart';
import '../utils/auth_methods.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
    model.User? user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 18, left: 20),
                    child: Text(
                      'iCodegram',
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 200)),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    icon: Icon(Icons.exit_to_app, color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      child: IconButton(
                          onPressed: () {},
                          icon: AllImagesSVG(
                              wight: 80,
                              heigth: 80,
                              image: 'assets/images/default-photo.svg'))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          user.username,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          '54 Дагагчтай',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Text(
                          '9  Пост нийтэлсэн',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Профайл Засах',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Rubik',
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}