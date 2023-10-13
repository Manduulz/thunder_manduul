import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      home:  Scaffold(
        body:  Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back1.png'))),
          child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'GAME',
                  style: TextStyle(
                    fontFamily: 'Ribeye',
                      fontSize: 25,
                  color: Colors.orange,
                  fontWeight: FontWeight.w400
                  ),
                ),



                Image.asset('assets/images/icodeGuy.png'),

                Text(
                  'READY?',

                  style: TextStyle(
                      fontFamily: 'Ribeye',
                      fontSize: 25,
                      color: Colors.orange,
                      fontWeight: FontWeight.w400
                  ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}





