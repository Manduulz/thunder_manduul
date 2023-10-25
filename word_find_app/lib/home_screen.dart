import 'package:flutter/material.dart';
import 'package:word_find_app/start_screen.dart';

import 'gradient_letter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
                children: [
            Padding(padding: EdgeInsets.only(top: 60)),
        Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/back1.png'))),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter(word: 'W',
                      width: 60,
                      height: 60,
                      fontSize: 38,
                      outerCircleRadius: 16,
                      innerCircleRadius: 8,
                      letterHeight: 52 / 45,),
            Padding(padding: EdgeInsets.only(right: 10)),
            GradientLetter(word: 'O',
              width: 60,
              height: 60,
              fontSize: 38,
              outerCircleRadius: 16,
              innerCircleRadius: 8,
              letterHeight: 52 / 45,),
            Padding(padding: EdgeInsets.only(right: 10)),
            GradientLetter(word: 'R',
                width: 60,
                height: 60,
                fontSize: 38,
                outerCircleRadius: 16,
                innerCircleRadius: 8,
                letterHeight: 52 / 45),
            Padding(padding: EdgeInsets.only(right: 10)),
            GradientLetter(word: 'D',
                width: 60,
                height: 60,
                fontSize: 38,
                outerCircleRadius: 16,
                innerCircleRadius: 8,
                letterHeight: 52 / 45),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          const Text(
            'GAME',
            style: TextStyle(
                fontFamily: 'Ribeye',
                fontSize: 25,
                color: Colors.orange,
                fontWeight: FontWeight.w400),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
          Image.asset('assets/images/icodeGuy.png'),
          const Padding(padding: EdgeInsets.only(top: 70)),
          Text(
            'READY?',
            style: TextStyle(
              fontFamily: 'Ribeye',
              fontSize: 25,
              color: Colors.orange,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 25)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const StartScreen(),));
            },
            child: Container(
              width: 310,
              height: 60,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.only(top: 15),
              child: Text(
                textAlign: TextAlign.center,
                'PLAY',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 24,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
          ],
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
