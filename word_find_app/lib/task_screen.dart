import 'package:flutter/material.dart';
import 'package:word_find_app/gradient_letter.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int points = 0;
  int scorePoint = 0;
  int fullPoint = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
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
          SizedBox(
            width: 26,
            height: 26,
            child: Image.asset('assets/images/trophy 1.png'),
          ),
          Text(
            points.toString(),
            style: TextStyle(
                fontFamily: 'Ribeye',
                fontSize: 26,
                color: Colors.orange,
                fontWeight: FontWeight.w400,
                height: 33 / 20),
          )
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back2.png'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/images/orange.png'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/images/orange.png'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/images/orange.png'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/images/orange.png'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 5)),
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/images/orange.png'),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              Text(
                "$scorePoint/$fullPoint",
                style: TextStyle(
                    fontFamily: 'Ribeye',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 33 / 20,
                    color: Colors.orange),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/previousGray.png')),
                SizedBox(
                  height: 263,
                  width: 265,
                  child: Image.asset('assets/images/totoro.jpeg'),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/next.png'))
              ]),
              Padding(padding: EdgeInsets.only(top: 15)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientLetter(
                      word: '',
                      withd: 43,
                      height: 43,
                      fontSize: 25,
                      outerCircleRadius: 8,
                      innerCircleRadius: 4,
                      letterHeight: 12 / 15),
                  Padding(padding: EdgeInsets.only(right: 6)),
                  GradientLetter(
                      word: '',
                      withd: 43,
                      height: 43,
                      fontSize: 25,
                      outerCircleRadius: 8,
                      innerCircleRadius: 4,
                      letterHeight: 12 / 15),
                  Padding(padding: EdgeInsets.only(right: 6)),
                  GradientLetter(
                      word: '',
                      withd: 43,
                      height: 43,
                      fontSize: 25,
                      outerCircleRadius: 8,
                      innerCircleRadius: 4,
                      letterHeight: 12 / 15),
                  Padding(padding: EdgeInsets.only(right: 6)),
                  GradientLetter(
                      word: '',
                      withd: 43,
                      height: 43,
                      fontSize: 25,
                      outerCircleRadius: 8,
                      innerCircleRadius: 4,
                      letterHeight: 12 / 15),
                  Padding(padding: EdgeInsets.only(right: 6)),
                  GradientLetter(
                      word: '',
                      withd: 43,
                      height: 43,
                      fontSize: 25,
                      outerCircleRadius: 8,
                      innerCircleRadius: 4,
                      letterHeight: 12 / 15),
                  Padding(padding: EdgeInsets.only(right: 6)),
                  GradientLetter(
                      word: '',
                      withd: 43,
                      height: 43,
                      fontSize: 25,
                      outerCircleRadius: 8,
                      innerCircleRadius: 4,
                      letterHeight: 12 / 15),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/hint.png')),
                  Text(
                    'Hint',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 19 / 16,
                        color: Colors.orange),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 25)),
              Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientLetter(
                            word: 'A',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'E',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'T',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'I',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'P',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'M',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'O',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15)
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 6)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                            print('clicked');
                          },
                          child: Container(
                              child: GradientLetter(
                                  word: 'Y',
                                  withd: 43,
                                  height: 43,
                                  fontSize: 28,
                                  outerCircleRadius: 8,
                                  innerCircleRadius: 4,
                                  letterHeight: 12 / 15)),
                        ),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        InkWell(
                          onTap: (){
                            print('clicked');
                          },
                          child: Container(
                              child: GradientLetter(
                            word: 'C',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15))),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        InkWell(
                          onTap: (){
                            print('clicked');
                          },
                          child: Container(
                            child: GradientLetter(
                                word: 'B',
                                withd: 43,
                                height: 43,
                                fontSize: 28,
                                outerCircleRadius: 8,
                                innerCircleRadius: 4,
                                letterHeight: 12 / 15),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        InkWell(
                          onTap: (){
                            print('clicked');
                          },
                          child: Container(
                              child: GradientLetter(
                            word: 'K',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15))),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'N',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'I',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                        Padding(padding: EdgeInsets.only(right: 6)),
                        GradientLetter(
                            word: 'E',
                            withd: 43,
                            height: 43,
                            fontSize: 28,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
