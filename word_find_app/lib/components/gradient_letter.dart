import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget {
  final String word;
  final double width;
  final double letterHeight;
  final double height;
  final double fontSize;
  final double outerCircleRadius;
  final double innerCircleRadius;

  const GradientLetter(
      {super.key,
      required this.word,
      required this.width,
      required this.height,
      required this.fontSize,
      required this.outerCircleRadius,
      required this.innerCircleRadius,
      required this.letterHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(outerCircleRadius),
        color: const Color(0xFFFF9002),
      ),
      child: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 4/5,
          heightFactor: 4/5,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(innerCircleRadius),
                gradient: const LinearGradient(
                    colors: [Color.fromRGBO(255, 164, 2, 0), Color(0xFFE48000)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [-0.025, 1.6875],
                    transform: GradientRotation(180))),
            child: Text(
              word,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Ribeye',
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color(0xFFFFFFFF),
                  height: letterHeight),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientLetterGame extends StatelessWidget {
  String game;
  double gameFontSize;

  GradientLetterGame(
      {super.key, required this.game, required this.gameFontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      game,
      style: TextStyle(
          fontFamily: 'Ribeye',
          fontSize: gameFontSize,
          color: Colors.orange,
          fontWeight: FontWeight.w400),
    );
  }
}

class TrophyNumber extends StatefulWidget {
  final String title;

  const TrophyNumber({super.key, required this.title});

  @override
  State<TrophyNumber> createState() => _TrophyNumberState();
}

class _TrophyNumberState extends State<TrophyNumber> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/images/exit.png'),
          onPressed: () {},
        ),
        title: Column(
          children: [
            Text(
              'SRA',
              style: TextStyle(
                  fontFamily: 'Ribeye',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  height: 33 / 24,
                  color: Colors.orange),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              SizedBox(
                width: 26,
                height: 26,
                child: Image.asset('assets/images/trophy 1.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
