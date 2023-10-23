import 'package:flutter/material.dart';
import 'package:word_find_app/components/input_field.dart';
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
              InputField(onSubmitted: (String value){
                this.onSubmitted(value);
              }),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                onPressed: () {},
                child: Container(
                  width: 310,
                  height: 50,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    textAlign: TextAlign.center,
                    'START',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
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

  void onSubmitted(String value){

  }
}
