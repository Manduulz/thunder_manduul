import 'dart:core';

import 'package:flutter/material.dart';
import 'package:word_find_app/components/word_search_widget.dart';
import 'package:word_find_app/components/gradient_letter.dart';
import 'package:word_find_app/home_screen.dart';
import 'package:word_find_app/model/user_model.dart';
import 'package:word_find_app/repository/word_list_repository.dart';
import 'package:word_find_app/start_screen.dart';
import 'package:word_search_safety/word_search_safety.dart';

import 'components/gradient_text.dart';
import 'model/game_state.dart';

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

  final WordSearchSafety wordSearch = WordSearchSafety();
  late Widget hiddenInput;
  WSNewPuzzle? newPuzzle;
  WSSolved? solved;
  late GameState gameState;
  int currentIndex = 0;
  bool isWon = false;
  int howManyGuessed = 0;
  late List<String> hiddenWord = [];

  final WSSettings settings = WSSettings(
      width: 7,
      height: 2,
      maxAttempts: 5,
      orientations: List.from([
        WSOrientation.horizontal,
        WSOrientation.diagonal
      ]));

  @override
  void initState() {
    super.initState();
    revealedHiddenWord = List.filled(hiddenWord.length, false);
    final WordListRepository wordListRepository = WordListRepository();
    gameState = GameState(
        currentModel: wordListRepository.search_words[currentIndex],
        currentModelIndex: currentIndex,
        isWon: isWon,
        howManyGuessed: howManyGuessed);
    hiddenWord = gameState.currentModel.hiddenWord;
    revealedHiddenWord = List.filled(hiddenWord.length, false);
    newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
    if (newPuzzle!.errors!.isEmpty) {
      solved = wordSearch.solvePuzzle(
          newPuzzle!.puzzle!, gameState.currentModel.hiddenWord);
    }
  }

  handleScore() {
    setState(() {
      points++;
    });
  }

  page() {
    setState(() {
      scorePoint++;
    });
  }

  void onLetterSelected(String letter) {
    setState(() {
      updateHiddenWordGrid(letter);
    });
  }

  void updateHiddenWordGrid(letter) {
    print('updateHiddenWordGrid: $letter');
    for (int i = 0; i < hiddenWord.length; i++) {
      if (hiddenWord[i] == letter) {
        revealedHiddenWord[i] = true;
      }
    }
    if (revealedHiddenWord.every((element) => element == true)) {
      print('You Won !');
      isWon = true;
      _changeState('Next');
    }
  }

  void _changeState(String state) {
    if (isWon) {
      page();
      handleScore();
      if (WordListRepository().search_words.length - 1 == currentIndex) {
        print('You won the Game !');
        showWinnerDialog(context);
      }
    }
    if (state == 'Prev') {
      currentIndex--;
    } else if (state == 'Next') {
      currentIndex++;
    } else {
      currentIndex;
    }
    print('current index $currentIndex');
    gameState.currentModel = WordListRepository().search_words[currentIndex];
    hiddenWord = gameState.currentModel.hiddenWord;
    revealedHiddenWord = List.filled(hiddenWord.length, false);
    isWon = false;
    newPuzzle = wordSearch.newPuzzle(hiddenWord, settings);
  }

  void resetState() {
    print('reset state');
    setState(() {
      _changeState('reset');
    });
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
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => ExitModel()));
            showAlertDialog(context);
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TaskScreen(user: newUser)));
                        },
                        icon: Image.asset('assets/images/previousGray.png')),
                    SizedBox(
                      height: 263,
                      width: 265,
                      child: Image.asset(gameState.currentModel.imageURL),
                    ),
                    IconButton(
                        onPressed: () {

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
                  Padding(padding: EdgeInsets.only(top: 75)),
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
                          child: WordSearchGame(
                            hiddenWord: hiddenWord,
                            settings: settings,
                            solved: solved,
                            newPuzzle: newPuzzle,
                            onLetterSelected: onLetterSelected,
                            changeState: resetState,
                          ),
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

  void showWinnerDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: EdgeInsets.all(30),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            content: SizedBox(
              width: 332,
              height: 126,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 4)),
                          SizedBox(
                              width: 45,
                              height: 45,
                              child: Image.asset('assets/images/orange.png')),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 100)),
                      SizedBox(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 24,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(0)),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                                  },
                                  child: Image.asset('assets/images/exit1.png')),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 16)),
                  SizedBox(
                      width: 230,
                      height: 61,
                      child: GradientText(
                          'WINNER!', 'Ribeye', 24, 0.1661, 0.961, false)),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TaskScreen(user: newUser)));
                  },
                  child: Container(
                    width: 250,
                    height: 45,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Play again',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(left: 14))
            ],
          );
        }
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            insetPadding: EdgeInsets.all(30),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            content: SizedBox(
              width: 332,
              height: 126,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 4)),
                          SizedBox(
                              width: 45,
                              height: 45,
                              child: Image.asset('assets/images/orange.png')),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 100)),
                      SizedBox(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 24,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(0)),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset('assets/images/exit1.png')),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 16)),
                  SizedBox(
                      width: 230,
                      height: 61,
                      child: GradientText('ARE YOU SURE TO QUIT ?', 'Ribeye', 24,
                          0.1661, 0.961, false)),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    width: 94,
                    height: 45,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Yes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(right: 20)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 94,
                    height: 45,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'No',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(right: 18))
            ],
          );
        }
    );
  }
}
