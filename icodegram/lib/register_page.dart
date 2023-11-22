import 'package:flutter/material.dart';
import 'package:icodegram/auth_methods.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  String? _name;
  int? _password;
  int? _phoneNumber;

  @override
  void dispose() {
    super.dispose();
    _phoneController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

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
                      const Text(
                        'iCodegram',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontFamily: 'Lobster',
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 40,),
                      Padding(padding: EdgeInsets.all(8),
                      child: TextField(
                        controller: _phoneController,
                        style: TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white10,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: 'E-Mail хаягаа оруулна уу',
                            hintStyle: TextStyle(color: Colors.white),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            _phoneNumber = (value.isNotEmpty ? value : null) as int?;
                          });
                        },
                      ),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                        child: TextField(
                          controller: _nameController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white10,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: 'Хэрэглэгчийн нэр',
                              hintStyle: TextStyle(color: Colors.white)),
                          keyboardType: TextInputType.name,
                          onChanged: (value) {
                            setState(() {
                              _name = value.isNotEmpty ? value : null;
                            });
                          },
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                        child: TextField(
                          obscureText: true,
                          controller: _passwordController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
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
                      Padding(padding: EdgeInsets.all(8),
                        child: TextField(
                          obscureText: true,
                          controller: _rePasswordController,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white10,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintText: 'Нууц үг давтах',
                              hintStyle: TextStyle(color: Colors.white)),
                          onChanged: (value) {
                            setState(() {
                              _password = int.tryParse(value);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    AuthMethods().signUpUser(
                        phonenumber: _phoneController.text,
                        password: _passwordController.text,
                        username: _nameController.text,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 12),
                    width: 350,
                    height: 50,
                    child: const Text(
                      'Бүртгүүлэх',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400),
                    ),
                  )),
              const Padding(padding: EdgeInsets.only(top: 18)),
              const Text(
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
                  const Text(
                    'Бүртгэлтэй юу ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Нэвтрэх',
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
