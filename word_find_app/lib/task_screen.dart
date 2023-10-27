import 'package:flutter/material.dart';
import 'package:word_find_app/gradient_letter.dart';
import 'package:word_find_app/model/user_model.dart';
import 'package:word_find_app/start_screen.dart';

class TaskScreen extends StatefulWidget {
  final User user;
  const TaskScreen({super.key, required this.user});


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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          children: [
            Text(
              '${newUser.name}',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/back2.png'))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
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
                          width: 43,
                          height: 43,
                          fontSize: 25,
                          outerCircleRadius: 8,
                          innerCircleRadius: 4,
                          letterHeight: 12 / 15),
                      Padding(padding: EdgeInsets.only(right: 6)),
                      GradientLetter(
                          word: '',
                          width: 43,
                          height: 43,
                          fontSize: 25,
                          outerCircleRadius: 8,
                          innerCircleRadius: 4,
                          letterHeight: 12 / 15),
                      Padding(padding: EdgeInsets.only(right: 6)),
                      GradientLetter(
                          word: '',
                          width: 43,
                          height: 43,
                          fontSize: 25,
                          outerCircleRadius: 8,
                          innerCircleRadius: 4,
                          letterHeight: 12 / 15),
                      Padding(padding: EdgeInsets.only(right: 6)),
                      GradientLetter(
                          word: '',
                          width: 43,
                          height: 43,
                          fontSize: 25,
                          outerCircleRadius: 8,
                          innerCircleRadius: 4,
                          letterHeight: 12 / 15),
                      Padding(padding: EdgeInsets.only(right: 6)),
                      GradientLetter(
                          word: '',
                          width: 43,
                          height: 43,
                          fontSize: 25,
                          outerCircleRadius: 8,
                          innerCircleRadius: 4,
                          letterHeight: 12 / 15),
                      Padding(padding: EdgeInsets.only(right: 6)),
                      GradientLetter(
                          word: '',
                          width: 43,
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
                          icon: SizedBox(
                              width: 45,
                              height: 19,
                              child: Image.asset('assets/images/hint.png'))),
                      IconButton(
                          onPressed: () {},
                          icon: SizedBox(
                            width: 45,
                            height: 19,
                            child: Text(
                              'Hint',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 19 / 16,
                                  color: Colors.orange),
                            ),
                          ))
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
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'A',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'E',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'T',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'I',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'P',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'M',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'O',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                  child: GradientLetter(
                                      word: 'Y',
                                      width: 43,
                                      height: 43,
                                      fontSize: 28,
                                      outerCircleRadius: 8,
                                      innerCircleRadius: 4,
                                      letterHeight: 12 / 15)),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                                onTap: () {
                                  print('clicked');
                                },
                                child: Container(
                                    child: GradientLetter(
                                        word: 'C',
                                        width: 43,
                                        height: 43,
                                        fontSize: 28,
                                        outerCircleRadius: 8,
                                        innerCircleRadius: 4,
                                        letterHeight: 12 / 15))),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'B',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                                onTap: () {
                                  print('clicked');
                                },
                                child: Container(
                                    child: GradientLetter(
                                        word: 'K',
                                        width: 43,
                                        height: 43,
                                        fontSize: 28,
                                        outerCircleRadius: 8,
                                        innerCircleRadius: 4,
                                        letterHeight: 12 / 15))),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'N',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'I',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(right: 6)),
                            InkWell(
                              onTap: () {
                                print('clicked');
                              },
                              child: Container(
                                child: GradientLetter(
                                    word: 'E',
                                    width: 43,
                                    height: 43,
                                    fontSize: 28,
                                    outerCircleRadius: 8,
                                    innerCircleRadius: 4,
                                    letterHeight: 12 / 15),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
