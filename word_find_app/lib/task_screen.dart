import 'package:flutter/material.dart';
import 'package:word_find_app/components/word_search_widget.dart';
import 'package:word_find_app/components/gradient_letter.dart';
import 'package:word_find_app/model/user_model.dart';
import 'package:word_find_app/start_screen.dart';
import 'package:word_search_safety/word_search_safety.dart';
import 'package:word_find_app/task_screen2.dart';

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
  List<Widget> hiddenWordGradient = [];
  List<bool> revealedHiddenWord = [];
  final List<String> wordList = ['T', 'O', 'T', 'O', 'R', 'O'];
  final WordSearchSafety wordSearch = WordSearchSafety();
  late Widget hiddenInput;
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;


  final String hiddenWord = 'TOTORO';

  @override
  void initState() {
    super.initState();
    revealedHiddenWord = List.filled(wordList.length, false);
  }

  void onLetterSelected(String letter) {
    setState(() {
      updateHiddenWordGrid(letter);
    });
  }

  void updateHiddenWordGrid(letter) {
    for (int i = 0; i < hiddenWord.length; i++) {
      if(hiddenWord[i] == letter){
        revealedHiddenWord[i] = true;
      }
    }
  }

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
            Navigator.pop(context);
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
                      child: Image.asset('assets/images/totoro.jpeg'),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      TaskScreen2(user: newUser)));
                        },
                        icon: Image.asset('assets/images/next.png'))
                  ]),
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(hiddenWord.length, (index) {
                      if (revealedHiddenWord[index]) {
                        return GradientLetter(
                            word: hiddenWord[index],
                            width: 43,
                            height: 43,
                            fontSize: 25,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15);
                      } else {
                        return const GradientLetter(
                            word: '',
                            width: 43,
                            height: 43,
                            fontSize: 25,
                            outerCircleRadius: 8,
                            innerCircleRadius: 4,
                            letterHeight: 12 / 15);
                      }
                    }),
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
                  // Padding(padding: EdgeInsets.only(top: 45)),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 297,
                          child: WordSearchGame(hiddenWord, onLetterSelected),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
