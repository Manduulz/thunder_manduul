import 'package:flutter/material.dart';
import 'package:lesson_day_29_flutter/auth_methods.dart';
import 'package:lesson_day_29_flutter/text_field_input.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  
  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                  child: Container(),
              ),
              Text(
                'iCodegram',
                style: TextStyle(fontSize: 34),
              ),
              SizedBox(
                height: 64,
              ),
              TextFieldInput(
                  textEditingController: _phoneNumberController,
                  hintText: 'Утасны дугаар', 
                  isPassword: false
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _userController,
                  hintText: 'Хэрэглэгчийн нэр',
                  isPassword: false
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _passwordController,
                  hintText: 'Нууц үг',
                  isPassword: true
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                  textEditingController: _rePasswordController,
                  hintText: 'Нууц үг давтах',
                  isPassword: true
              ),
              SizedBox(
                height: 24,
              ),
              Flexible(
                flex: 2,
                  child: Container(),
              ),
              InkWell(
                onTap: () {
                  AuthMethods().signUpUser(
                      phonenumber: _phoneNumberController.text,
                      password: _passwordController.text,
                      username: _userController.text);
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('Бүртгүүлэх'),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    color: Colors.blue
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(child: Container(), flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}
