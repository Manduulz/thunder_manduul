import 'package:flutter/material.dart';
import 'package:word_find_app/home_screen.dart';
import 'package:word_find_app/start_screen.dart';
import 'package:word_find_app/task_screen.dart';

import 'gradient_text.dart';

class WinnerModel extends StatelessWidget {
  const WinnerModel({super.key});

  @override
  Widget build(BuildContext context) {
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
}
