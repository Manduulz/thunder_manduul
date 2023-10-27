import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:word_find_app/components/input_field.dart';
import 'package:word_find_app/gradient_letter.dart';
import 'package:word_find_app/model/user_model.dart';
import 'package:word_find_app/task_screen.dart';

User newUser = User('Guest', 0);

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/back2.png'))),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 100)),
              Image.asset('assets/images/icodeGuyHead.png'),
              const Padding(padding: EdgeInsets.only(top: 40)),
              GradientLetterGame(game: 'Player name', gameFontSize: 20),
              const Padding(padding: EdgeInsets.only(top: 15)),
              InputField(onSubmitted: _createUser),
              const Padding(padding: EdgeInsets.only(top: 10)),
              StartButton(newUser)
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          children: [
            const SizedBox(
              height: 30,
              width: 219,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientLetter(
                    word: 'W',
                    width: 30,
                    height: 30,
                    fontSize: 20,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 12 / 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 7)),
                  GradientLetter(
                    word: 'O',
                    width: 30,
                    height: 30,
                    fontSize: 20,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 12 / 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 7)),
                  GradientLetter(
                    word: 'R',
                    width: 30,
                    height: 30,
                    fontSize: 20,
                    outerCircleRadius: 8,
                    innerCircleRadius: 4,
                    letterHeight: 12 / 15,
                  ),
                  Padding(padding: EdgeInsets.only(right: 7)),
                  GradientLetter(
                    word: 'D',
                    width: 30,
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

  void onSubmitted(String value) {}
  void _createUser(String userName) {
    setState(() {
      newUser.name = userName;
    });
    if (kDebugMode) {
      print('Creating user: ${newUser.name}');
      print("User's score: ${newUser.point}");
    }
  }
}

class StartButton extends StatelessWidget {
  const StartButton(User newUser, {super.key});

  @override
  Widget build(BuildContext context) {
    if(newUser.name == 'Guest') {
      return Container();
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TaskScreen(
                  user: newUser,
                ),
              ));
        },
        child: Container(
          width: 260,
          height: 50,
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.only(top: 10),
          child: const Text(
            textAlign: TextAlign.center,
            'START',
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
        ),
      );
    }
  }
}
