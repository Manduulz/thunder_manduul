import 'package:flutter/material.dart';
import 'package:lesson_day_30_flutter/screens/home_screen.dart';
import 'package:lesson_day_30_flutter/utils/auth_methods.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 32),
              Text(
                'Login',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordContoller,
                decoration: InputDecoration(hintText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  String result = await AuthMethods().loginUser(
                      email: _emailController.text,
                      password: _passwordContoller.text);
                  if (result == 'success') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  } else {
                    final snackBar = SnackBar(
                      content: const Text('Login False'),
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
                  // else {
                  //   SnackBar(content: Text('Таны оруулсан код болон e-mail буруу байна.'),
                  //     action: SnackBarAction(
                  //       label: 'Undo',
                  //       onPressed: (){
                  //         Navigator.pop(context);
                  //       },
                  //     ),);
                  // }

                },
                child: Text('Login'),
              ),
              SizedBox(height: 16),
              TextButton(onPressed: () {}, child: Text('Register')),
            ],
          ),
        ),
      ),
    );
  }
}
