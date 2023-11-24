import 'package:flutter/material.dart';
import 'package:icodegram/auth_methods.dart';
import 'package:icodegram/model/user_model.dart';
import 'package:icodegram/nav_bar/screen_layout.dart';
import 'package:icodegram/register_page.dart';

User newUser = User('Guest', 1234, 99999999);

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _name;
  int? _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 160)),
              Center(
                child: Container(
                  child:  Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'iCodegram',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontFamily: 'Lobster',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TextField(
                            controller: _nameController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white10,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                hintText: 'Нэвтрэх нэр (E-Mail)',
                                hintStyle: TextStyle(color: Colors.white)),
                            onChanged: (value) {
                              setState(() {
                                _name = value.isNotEmpty ? value : null;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: TextField(
                            obscureText: true,
                            controller: _passwordController,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white10,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                hintText: 'Нууц үг',
                                hintStyle: TextStyle(color: Colors.white)),
                            onChanged: (value) {
                              setState(() {
                                _password = int.tryParse(value);
                              });
                            },
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  // onPressed: 1 == 1 ? null : (){},
                  onPressed: _password == null && _name == null ? null : () async {
                    String result = await AuthMethods().loginUser(email: _nameController.text, password: _passwordController.text);
                    if (result == 'success') {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenLayout()));
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('Login Failed Try Again unlucku guy min'),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );

                      // Find the ScaffoldMessenger in the widget tree
                      // and use it to show a SnackBar.
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 12),
                    width: 350,
                    height: 50,
                    child: const Text(
                      'Нэвтрэх',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(top: 18)),
              Text(
                'Эсвэл',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Шинэ хэрэглэгч үү ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                      },
                      child: Text('Бүртгүүлэх',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w400)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
