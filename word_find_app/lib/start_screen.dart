import 'package:flutter/material.dart';
import 'package:word_find_app/gradient_letter.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back2.png'))),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100)),
              Image.asset('assets/images/icodeGuyHead.png'),
              Padding(padding: EdgeInsets.only(top: 40)),
              GradientLetterGame(game: 'Player name', gameFontSize: 20),
              Padding(padding: EdgeInsets.only(top: 15)),
              Container(
                width: 310,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TextField(
                  textAlign: TextAlign.start,

                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/close 1.png'),

                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none)),
                    labelText: 'Type here',
                    labelStyle: TextStyle(color: Colors.orange),
                  ),
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 40 / 18,
                      color: Colors.orange),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/images/previous 1.png'),
          onPressed: () {},
        ),
        title: Column(
          children: [
            SizedBox(
              height: 30,
              width: 219,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientLetter(
                    word: 'W',
                    withd: 30,
                    height: 30,
                    fontSize: 20,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 12 / 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 7)),
                  GradientLetter(
                    word: 'O',
                    withd: 30,
                    height: 30,
                    fontSize: 20,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 12 / 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 7)),
                  GradientLetter(
                    word: 'R',
                    withd: 30,
                    height: 30,
                    fontSize: 20,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 12 / 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 7)),
                  GradientLetter(
                    word: 'D',
                    withd: 30,
                    height: 30,
                    fontSize: 20,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 12 / 15,
                  ),
                ],
              ),
            ),
            GradientLetterGame(game: 'GAME', gameFontSize: 15)
          ],
        ),
      ),
    );
  }
}
