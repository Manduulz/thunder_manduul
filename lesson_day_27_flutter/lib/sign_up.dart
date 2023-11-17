import 'package:flutter/material.dart';
import 'package:lesson_day_27_flutter/text_field_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Flexible(
              //   flex: 2,
              //     child: Container(),
              // ),

              Text(
                'ICodegram',
                style: TextStyle(fontSize: 34),
              ),
              SizedBox(height: 64,),
              TextFieldInput(
                  hintText: 'Утасны дугаар',
                  controller: _phoneNumberController,
                  isPassword: false),
              Padding(padding: EdgeInsets.only(top: 14)),
              TextFieldInput(
                  hintText: 'Нэр',
                  controller: _userController,
                  isPassword: false),
              Padding(padding: EdgeInsets.only(top: 14)),
              TextFieldInput(
                  hintText: 'Нууц үг',
                  controller: _passwordController,
                  isPassword: false),
              Padding(padding: EdgeInsets.only(top: 14)),
              TextFieldInput(
                  hintText: 'Нууц үг давтах',
                  controller: _rePasswordController,
                  isPassword: false),
              SizedBox(height: 55,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (){},
                  child: Container(
                    padding: EdgeInsets.only(top: 12),
                    width: 350,
                    height: 50,
                    child: Text(
                      'Бүртгүүлэх',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  )
              ),
              SizedBox(height: 77,)
            ],
          ),
        ),
      ),
    );
  }
}
