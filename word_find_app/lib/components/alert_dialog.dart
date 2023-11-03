import 'package:flutter/material.dart';
import 'package:word_find_app/components/gradient_text.dart';

class AlertWidgetWinner extends StatelessWidget {
  final String buttonText;
  final String showText;
  const AlertWidgetWinner(this.buttonText, this.showText, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(30),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      content: SizedBox(
        width: 330,
        height: 100,
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
                      child: Image.asset('assets/images/trophy 1.png'),
                    ),
                    Padding(padding: EdgeInsets.only(right: 100))
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 80)),
                SizedBox(
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 24,
                        child: TextButton(onPressed: (){},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0)
                            ),
                            child: Image.asset('assets/images/exit1.png')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            SizedBox(
              width: 230,
                height: 33,
                child: GradientText(showText, 'Ribeye', 24, 0.1661, 0.961, false))
          ],
        ),
      ),
      contentPadding: EdgeInsets.only(left: 33, right: 20, top: 20, bottom: 16),
      // actionsPadding: EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 24),
      actions: [
        Padding(padding: EdgeInsets.only(top: 10)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
            onPressed: () {

            },
            child: Container(
              width: 250,
              height: 45,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(25)),
              padding: EdgeInsets.only(top: 8),
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )),
        Padding(padding: EdgeInsets.only(right: 18)),
      ],
    );
  }
}
