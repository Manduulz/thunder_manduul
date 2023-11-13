import 'package:flutter/material.dart';
import 'package:word_find_app/start_screen.dart';
import 'package:word_find_app/task_screen.dart';
import 'gradient_text.dart';
import 'gradient_letter.dart';

class AlertDialogWidget extends StatefulWidget {
  
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

  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return TaskScreen(user: newUser);
  }
}
