import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(48),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),

      content: SizedBox(
        width: 330,
        height: 100,
        child: Column(
          children: [
            Image.asset('assets/images/orange.png'),
            Text('ARE YOU SURE TO QUIT ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Ribeye',
              fontWeight: FontWeight.bold,
              color: Colors.orange
            ),
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))
              )
            ),
            onPressed: (){},
            child: Container(
              width: 94,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
              ),
              padding: EdgeInsets.only(top: 8),
              child: Text('Yes',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            )),
        Padding(padding: EdgeInsets.only(right: 20)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))
                )
            ),
            onPressed: (){},
            child: Container(
              width: 94,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25)
              ),
              padding: EdgeInsets.only(top: 8),
              child: Text('No',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            )),
        Padding(padding: EdgeInsets.only(right: 5))
      ],
    );
  }
}
