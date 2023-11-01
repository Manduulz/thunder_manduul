import 'package:flutter/material.dart';
import 'package:word_find_app/components/grid_view_word.dart';
import 'package:word_find_app/components/lay_out_builder.dart';
import 'package:word_find_app/components/word_search_widget.dart';
import 'package:word_find_app/gradient_letter.dart';
import 'package:word_find_app/home_screen.dart';
import 'package:word_find_app/model/user_model.dart';
import 'package:word_find_app/start_screen.dart';
import 'package:word_find_app/task_screen.dart';

class TaskScreen2 extends StatefulWidget {
  final User user;
  const TaskScreen2({super.key, required this.user});


  @override
  State<TaskScreen2> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen2> {
  int points = 0;
  int scorePoint = 0;
  int fullPoint = 10;



  @override
  Widget build(BuildContext context) {

    print(widget.user.name);

    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset('assets/images/exit.png'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        title: Column(
          children: [
            Text(
              newUser.name,
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset('assets/images/previousGray.png')),
                    SizedBox(
                      height: 263,
                      width: 265,
                      child: Image.asset('assets/images/elsa.png'),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/next.png'))
                  ]),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

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
                  Padding(padding: EdgeInsets.only(top: 95)),

                  Container(

                    width: 405,
                    height: 197,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
                    ),
                    child: WordSearchGame(),
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
