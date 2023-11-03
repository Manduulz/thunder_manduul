import 'package:flutter/material.dart';
import 'package:word_find_app/home_screen.dart';

import 'gradient_text.dart';

class ExitModel extends StatelessWidget {
  const ExitModel({super.key});

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
}
