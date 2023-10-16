import 'package:flutter/material.dart';
class GradientLetter extends StatelessWidget {
  String word;
  GradientLetter({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFFF9002),
      ),
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(

          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(255, 144, 2, 0), Color(0xFFE48000)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [-0.025, 1.6875],
                    transform: GradientRotation(180)
                )
            ),
            child: Text(word,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Ribeye',
                  fontSize: 38,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFFFFFFFF),
                  height: 52/45
              ),),
          ),
        ),
      ),
    );
  }
}
class GradientLetterGame extends StatelessWidget {
  String game;
  GradientLetterGame({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Text(
      game,
      style: TextStyle(
          fontFamily: 'Ribeye',
          fontSize: 25,
          color: Colors.orange,
          fontWeight: FontWeight.w400
      ),
    );
  }
}


