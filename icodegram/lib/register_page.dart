import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _editingController = TextEditingController();
  final TextEditingController _textEditingController = TextEditingController();
  String? _name;
  int? _password;
  int? _phoneNumber;
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
                      SizedBox(height: 40,),
                      Padding(padding: EdgeInsets.all(8),
                      child: TextField(
                        controller: _controller,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white10,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: 'Утасны дугаар',
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
                          controller: _editingController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
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
                          controller: _textEditingController,
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
                      Padding(padding: EdgeInsets.all(8),
                        child: TextField(
                          obscureText: true,
                          controller: _textEditingController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
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
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {},
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
                      child: Text('Нэвтрэх',
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
